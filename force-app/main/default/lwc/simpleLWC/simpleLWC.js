import { LightningElement } from 'lwc';
export default class SimpleLWC extends LightningElement {
    name = 'Hello'
    connectedCallback() {
        console.log('came into connectedCallback')
    }
}