require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { previewImageOnFileSelect } from '../components/photo_preview';
previewImageOnFileSelect();
