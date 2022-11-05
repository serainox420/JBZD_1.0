package com.google.android.gms.cast.framework.media;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaTrack;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzf extends ArrayAdapter<MediaTrack> implements View.OnClickListener {
    private final Context mContext;
    private int zzasW;

    /* loaded from: classes2.dex */
    private class zza {
        final TextView zzasX;
        final RadioButton zzasY;

        private zza(zzf zzfVar, TextView textView, RadioButton radioButton) {
            this.zzasX = textView;
            this.zzasY = radioButton;
        }
    }

    public zzf(Context context, List<MediaTrack> list, int i) {
        super(context, R.layout.cast_tracks_chooser_dialog_row_layout, list == null ? new ArrayList<>() : list);
        this.zzasW = -1;
        this.mContext = context;
        this.zzasW = i;
    }

    private String zza(MediaTrack mediaTrack, int i) {
        String name = mediaTrack.getName();
        if (TextUtils.isEmpty(name)) {
            if (mediaTrack.getSubtype() == 2) {
                return this.mContext.getString(R.string.cast_tracks_chooser_dialog_closed_captions);
            }
            if (!TextUtils.isEmpty(mediaTrack.getLanguage())) {
                String displayLanguage = MediaUtils.getTrackLanguage(mediaTrack).getDisplayLanguage();
                if (!TextUtils.isEmpty(displayLanguage)) {
                    return displayLanguage;
                }
            }
            return this.mContext.getString(R.string.cast_tracks_chooser_dialog_default_track_name, Integer.valueOf(i + 1));
        }
        return name;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        zza zzaVar;
        View view2;
        if (view == null) {
            View inflate = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.cast_tracks_chooser_dialog_row_layout, viewGroup, false);
            zzaVar = new zza((TextView) inflate.findViewById(R.id.text), (RadioButton) inflate.findViewById(R.id.radio));
            inflate.setTag(zzaVar);
            view2 = inflate;
        } else {
            zzaVar = (zza) view.getTag();
            view2 = view;
        }
        if (zzaVar == null) {
            return null;
        }
        zzaVar.zzasY.setTag(Integer.valueOf(i));
        zzaVar.zzasY.setChecked(this.zzasW == i);
        view2.setOnClickListener(this);
        zzaVar.zzasX.setText(zza(getItem(i), i));
        return view2;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.zzasW = ((Integer) ((zza) view.getTag()).zzasY.getTag()).intValue();
        notifyDataSetChanged();
    }

    public MediaTrack zztM() {
        if (this.zzasW < 0 || this.zzasW >= getCount()) {
            return null;
        }
        return getItem(this.zzasW);
    }
}
