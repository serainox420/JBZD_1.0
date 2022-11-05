package com.openx.model.vast;

import com.openx.common.utils.helpers.Utils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class CustomClick extends BaseId {
    private static final long serialVersionUID = -4142761508162244854L;

    public CustomClick(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        super(xmlPullParser);
        Utils.log(this, "Video customClick url: " + this.value);
    }
}
