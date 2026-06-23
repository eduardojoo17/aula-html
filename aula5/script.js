const quadradoAzul = document.querySelector('.quadrado-azul')

for (let i = 0; i < 50; i++) {
    const estrela =document.createElement('div')
estrela.className= 'estrela';
quadradoAzul.appendChild(estrela)
    
}


const bandeira = document.querySelector('.bandeira')
for (let i = 0; i < 7; i++) {
    const faixaver =document.createElement('div')
    faixaver.className='faixaver'
    bandeira.appendChild(faixaver)
 for (let j = 0; j < 6; j++){
        const faixabra =document.createElement('div')
    faixabra.className='faixabra'
    bandeira.appendChild(faixabra)
    }
}
