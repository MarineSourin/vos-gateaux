import $ from 'jquery';
import 'select2';
import '../../../node_modules/select2/dist/css/select2.css';

const initSelect2 = () => {
  $('.select2').select2({
    placeholder: "Choisir un ingrédient"
  });
};

export { initSelect2 }
