<?php
defined('BASEPATH') OR exit ('No direct script access allowed');

require_once('_temp/backend/dompdf/autoload.inc.php');
use Dompdf\Dompdf;

class Mypdf
{
    protected $ci;

    public function __construct()
    {
        $this->ci =& get_instance();
    }

    public function generate($view, $data = array(), $filemame, $paper = 'A4', $orientation='portait'){
        $dompdf = new Dompdf();

        $html = $this->ci->load->view($view, $data, TRUE);
        $dompdf->loadHtml($html);
        $dompdf->set_option('isRemoteEnabled', true);
        $dompdf->set_option('enable_css_float', true);

        // (Optional) Setup the paper size and orientation
        $dompdf->setPaper($paper, $orientation);

        // Render the HTML as PDF
        $dompdf->render();
        ob_clean();
        $f;
        $l;
        if(headers_sent($f,$l))
        {
            echo $f,'<br/>',$l,'<br/>';
            die('now detect line');
        }
        $dompdf->stream($filemame . ".pdf", array("Attachment" => FALSE));

    }

}
