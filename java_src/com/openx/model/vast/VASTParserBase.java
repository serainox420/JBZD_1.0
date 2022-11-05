package com.openx.model.vast;

import com.openx.common.utils.helpers.Utils;
import java.io.IOException;
import java.io.Serializable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class VASTParserBase implements Serializable {
    private static final long serialVersionUID = 1691277685523606505L;

    public String readText(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String str = "";
        if (xmlPullParser.next() == 4) {
            str = xmlPullParser.getText();
            xmlPullParser.nextTag();
        } else {
            Utils.log(this, "No text: " + xmlPullParser.getName());
        }
        return str.trim();
    }

    public void skip(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
            }
        }
    }
}
