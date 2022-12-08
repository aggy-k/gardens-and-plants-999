import TomSelect from "tom-select";

const initTomSelect = () => {
  // const select = document.querySelector("[data-behavior='tom-select']")
  // console.log({select})
  if (document.querySelector("[data-behavior='tom-select']")) {
    new TomSelect("[data-behavior='tom-select']")
  }
}

export { initTomSelect }
