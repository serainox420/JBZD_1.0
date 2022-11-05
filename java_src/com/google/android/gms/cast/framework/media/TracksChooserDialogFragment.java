package com.google.android.gms.cast.framework.media;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.q;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TabHost;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes2.dex */
public class TracksChooserDialogFragment extends q {
    private Dialog mDialog;
    private long[] zzaoE;
    private List<MediaTrack> zzasR;
    private List<MediaTrack> zzasS;

    public static TracksChooserDialogFragment newInstance(MediaInfo mediaInfo, long[] jArr) {
        List<MediaTrack> mediaTracks;
        if (mediaInfo == null || (mediaTracks = mediaInfo.getMediaTracks()) == null) {
            return null;
        }
        ArrayList<MediaTrack> zza = zza(mediaTracks, 2);
        ArrayList<MediaTrack> zza2 = zza(mediaTracks, 1);
        if (zza.isEmpty() && zza2.isEmpty()) {
            return null;
        }
        TracksChooserDialogFragment tracksChooserDialogFragment = new TracksChooserDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("extra_tracks_type_audio", zza);
        bundle.putParcelableArrayList("extra_tracks_type_text", zza2);
        bundle.putLongArray("extra_active_track_ids", jArr);
        tracksChooserDialogFragment.setArguments(bundle);
        return tracksChooserDialogFragment;
    }

    private static int zza(List<MediaTrack> list, long[] jArr, int i) {
        if (jArr == null || list == null) {
            return i;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            for (long j : jArr) {
                if (j == list.get(i2).getId()) {
                    return i2;
                }
            }
        }
        return i;
    }

    private static ArrayList<MediaTrack> zza(List<MediaTrack> list, int i) {
        ArrayList<MediaTrack> arrayList = new ArrayList<>();
        if (list != null) {
            for (MediaTrack mediaTrack : list) {
                if (mediaTrack.getType() == i) {
                    arrayList.add(mediaTrack);
                }
            }
        }
        return arrayList;
    }

    private void zza(View view, zzf zzfVar, zzf zzfVar2) {
        ListView listView = (ListView) view.findViewById(R.id.text_list_view);
        ListView listView2 = (ListView) view.findViewById(R.id.audio_list_view);
        TextView textView = (TextView) view.findViewById(R.id.text_empty_message);
        TextView textView2 = (TextView) view.findViewById(R.id.audio_empty_message);
        listView.setAdapter((ListAdapter) zzfVar);
        listView2.setAdapter((ListAdapter) zzfVar2);
        TabHost tabHost = (TabHost) view.findViewById(R.id.tab_host);
        tabHost.setup();
        TabHost.TabSpec newTabSpec = tabHost.newTabSpec("textTab");
        if (zzfVar.getCount() == 0) {
            listView.setVisibility(4);
            newTabSpec.setContent(R.id.text_empty_message);
        } else {
            textView.setVisibility(4);
            newTabSpec.setContent(R.id.text_list_view);
        }
        newTabSpec.setIndicator(getActivity().getString(R.string.cast_tracks_chooser_dialog_subtitles));
        tabHost.addTab(newTabSpec);
        TabHost.TabSpec newTabSpec2 = tabHost.newTabSpec("audioTab");
        if (zzfVar2.getCount() == 0) {
            listView2.setVisibility(4);
            newTabSpec2.setContent(R.id.audio_empty_message);
        } else {
            textView2.setVisibility(4);
            newTabSpec2.setContent(R.id.audio_list_view);
        }
        newTabSpec2.setIndicator(getActivity().getString(R.string.cast_tracks_chooser_dialog_audio));
        tabHost.addTab(newTabSpec2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzf zzfVar, zzf zzfVar2) {
        RemoteMediaClient remoteMediaClient;
        CastSession currentCastSession = CastContext.getSharedInstance(getContext()).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected() || (remoteMediaClient = currentCastSession.getRemoteMediaClient()) == null || !remoteMediaClient.hasMediaSession()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        MediaTrack zztM = zzfVar.zztM();
        if (zztM.getId() != -1) {
            arrayList.add(Long.valueOf(zztM.getId()));
        }
        MediaTrack zztM2 = zzfVar2.zztM();
        if (zztM2 != null) {
            arrayList.add(Long.valueOf(zztM2.getId()));
        }
        long[] activeTrackIds = remoteMediaClient.getMediaStatus().getActiveTrackIds();
        if (activeTrackIds != null && activeTrackIds.length > 0) {
            HashSet hashSet = new HashSet();
            for (MediaTrack mediaTrack : this.zzasS) {
                hashSet.add(Long.valueOf(mediaTrack.getId()));
            }
            for (MediaTrack mediaTrack2 : this.zzasR) {
                hashSet.add(Long.valueOf(mediaTrack2.getId()));
            }
            for (long j : activeTrackIds) {
                if (!hashSet.contains(Long.valueOf(j))) {
                    arrayList.add(Long.valueOf(j));
                }
            }
        }
        long[] jArr = new long[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            jArr[i] = ((Long) arrayList.get(i)).longValue();
        }
        Arrays.sort(jArr);
        remoteMediaClient.setActiveMediaTracks(jArr);
        if (this.mDialog == null) {
            return;
        }
        this.mDialog.cancel();
        this.mDialog = null;
    }

    private MediaTrack zztL() {
        return new MediaTrack.Builder(-1L, 1).setName(getActivity().getString(R.string.cast_tracks_chooser_dialog_none)).setSubtype(2).setContentId("").build();
    }

    @Override // android.support.v4.app.q, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        this.zzasR = getArguments().getParcelableArrayList("extra_tracks_type_text");
        this.zzasR.add(0, zztL());
        this.zzasS = getArguments().getParcelableArrayList("extra_tracks_type_audio");
        this.zzaoE = getArguments().getLongArray("extra_active_track_ids");
    }

    @Override // android.support.v4.app.q
    public Dialog onCreateDialog(Bundle bundle) {
        int zza = zza(this.zzasR, this.zzaoE, 0);
        int zza2 = zza(this.zzasS, this.zzaoE, -1);
        final zzf zzfVar = new zzf(getActivity(), this.zzasR, zza);
        final zzf zzfVar2 = new zzf(getActivity(), this.zzasS, zza2);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        View inflate = getActivity().getLayoutInflater().inflate(R.layout.cast_tracks_chooser_dialog_layout, (ViewGroup) null);
        zza(inflate, zzfVar, zzfVar2);
        builder.setView(inflate).setPositiveButton(getActivity().getString(R.string.cast_tracks_chooser_dialog_ok), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.cast.framework.media.TracksChooserDialogFragment.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                TracksChooserDialogFragment.this.zza(zzfVar, zzfVar2);
            }
        }).setNegativeButton(R.string.cast_tracks_chooser_dialog_cancel, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.cast.framework.media.TracksChooserDialogFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (TracksChooserDialogFragment.this.mDialog != null) {
                    TracksChooserDialogFragment.this.mDialog.cancel();
                    TracksChooserDialogFragment.this.mDialog = null;
                }
            }
        });
        if (this.mDialog != null) {
            this.mDialog.cancel();
            this.mDialog = null;
        }
        this.mDialog = builder.create();
        return this.mDialog;
    }

    @Override // android.support.v4.app.q, android.support.v4.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }
}
