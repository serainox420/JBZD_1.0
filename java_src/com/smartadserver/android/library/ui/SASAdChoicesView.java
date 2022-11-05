package com.smartadserver.android.library.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.drive.DriveFile;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.model.SASNativeAdElement;
/* loaded from: classes3.dex */
public class SASAdChoicesView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private SASNativeAdElement f5457a;

    public SASAdChoicesView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    private void b() {
        setImageDrawable(new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.F));
        a();
    }

    public void a() {
        setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASAdChoicesView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SASAdChoicesView.this.c();
            }
        });
    }

    public void setNativeAdElement(SASNativeAdElement sASNativeAdElement) {
        this.f5457a = sASNativeAdElement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        g e;
        String str = "http://smartadserver.fr/societe/politique-de-confidentialite/";
        if (this.f5457a != null && this.f5457a.getSelectedMediationAd() != null && (e = this.f5457a.getSelectedMediationAd().e()) != null && e.b() != null) {
            str = e.b().m();
        }
        if (str != null && str.length() > 0) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            try {
                Context context = getContext();
                if (!(context instanceof Activity)) {
                    intent.setFlags(DriveFile.MODE_READ_ONLY);
                }
                context.startActivity(intent);
            } catch (Exception e2) {
            }
        }
    }
}
