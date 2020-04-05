require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { previewImageOnFileSelect } from '../components/photo_preview';
import { initSelect2 } from '../components/init_select2';


previewImageOnFileSelect();
initSelect2();
