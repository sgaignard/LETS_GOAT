import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "totalAmount", "totalDays", "startDate", "endDate" ]
  static values = {pricePerDay: Number}

  updatePriceAndDays() {
    const startDate = new Date(this.startDateTarget.value)
    const endDate = new Date(this.endDateTarget.value)
    const numOfDays = Math.ceil(Math.abs(endDate - startDate)/ (1000 * 60 * 60 * 24))
    const bookingAmount = numOfDays * this.pricePerDayValue
    this.totalAmountTarget.innerHTML = bookingAmount
    this.totalDaysTarget.innerHTML = numOfDays
    console.log("what's up")
  }
}
