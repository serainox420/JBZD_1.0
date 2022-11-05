package net.openudid.android;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class OpenUDIDAndroidActivity extends Activity {
    private TextView lblCorpUDID;
    private TextView lblOpenUDID;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.main);
        OpenUDID.syncContext(getApplicationContext());
        this.lblOpenUDID = (TextView) findViewById(R.id.textView2);
        this.lblOpenUDID.setText(OpenUDID.getOpenUDIDInContext());
        this.lblCorpUDID = (TextView) findViewById(R.id.TextView4);
        this.lblCorpUDID.setText(OpenUDID.getCorpUDID("com.wavespread"));
    }
}
