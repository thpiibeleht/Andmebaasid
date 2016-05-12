import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.List;

public class Writer {
    private List<Card> listOfAllCards;

    public Writer(List<Card> listOfAllCards) {
        this.listOfAllCards = listOfAllCards;
    }

    public void writeCards() throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("andmeid.txt"), "UTF-8"))) {
            for (Card cardToWrite : listOfAllCards) {
                if (cardToWrite.isCollectible()) {
                    writer.write(cardToWrite.getCardSet()+" ");
                    writer.write(cardToWrite.getRarity()+" ");
                    writer.write(cardToWrite.getCardType()+" ");
                    writer.write(cardToWrite.getCost()+" ");
                    writer.write(cardToWrite.getClassType()+" ");
                    writer.write(cardToWrite.getName()+" ");
                    writer.write(cardToWrite.getTextOnCard()+" ");
                    writer.write(cardToWrite.getFlavorText()+" ");
                    writer.write(cardToWrite.getArtistName()+" ");
                    writer.newLine();
                }
            }
            /*
                private int cardSet, rarity,cardType,cost,classType;
                private boolean collectible;
                private String name, textOnCard,flavorText, artistName;
             */
        }
    }
}
