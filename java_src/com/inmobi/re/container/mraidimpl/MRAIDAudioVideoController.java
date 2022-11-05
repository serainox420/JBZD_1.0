package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSController;
import com.inmobi.re.controller.util.AVPlayer;
import com.inmobi.re.controller.util.AVPlayerListener;
import com.inmobi.re.controller.util.Constants;
import com.mopub.mobileads.resource.DrawableConstants;
import com.openx.view.mraid.JSInterface;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class MRAIDAudioVideoController {

    /* renamed from: a  reason: collision with root package name */
    private IMWebView f3943a;
    public AVPlayer audioplayer;
    public AVPlayer videoPlayer;
    public int videoValidateWidth;
    public Hashtable<String, AVPlayer> videoPlayerList = new Hashtable<>();
    public Hashtable<String, AVPlayer> audioPlayerList = new Hashtable<>();

    public MRAIDAudioVideoController(IMWebView iMWebView) {
        this.f3943a = iMWebView;
    }

    public void playAudioImpl(Bundle bundle, Activity activity) {
        final JSController.PlayerProperties playerProperties = (JSController.PlayerProperties) bundle.getParcelable(IMWebView.PLAYER_PROPERTIES);
        String string = bundle.getString(IMWebView.EXPAND_URL);
        if (string == null) {
            string = "";
        }
        if (a(playerProperties.id, string, activity)) {
            if ((string.length() != 0 && !URLUtil.isValidUrl(string)) || (string.length() == 0 && !this.audioPlayerList.containsKey(playerProperties.id))) {
                this.f3943a.raiseError("Request must specify a valid URL", "playAudio");
            } else if (this.audioplayer != null) {
                if (string.length() != 0) {
                    this.audioplayer.setPlayData(playerProperties, string);
                }
                this.audioPlayerList.put(playerProperties.id, this.audioplayer);
                FrameLayout frameLayout = (FrameLayout) activity.findViewById(16908290);
                if (playerProperties.isFullScreen()) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
                    layoutParams.addRule(13);
                    this.audioplayer.setLayoutParams(layoutParams);
                    RelativeLayout relativeLayout = new RelativeLayout(activity);
                    relativeLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.1
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            return true;
                        }
                    });
                    relativeLayout.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                    frameLayout.addView(relativeLayout, new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent()));
                    relativeLayout.addView(this.audioplayer);
                    this.audioplayer.setBackGroundLayout(relativeLayout);
                    this.audioplayer.requestFocus();
                    this.audioplayer.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.2
                        @Override // android.view.View.OnKeyListener
                        public boolean onKey(View view, int i, KeyEvent keyEvent) {
                            if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                Log.debug(Constants.RENDERING_LOG_TAG, "Back button pressed while fullscreen audio was playing");
                                MRAIDAudioVideoController.this.audioplayer.releasePlayer(true);
                            }
                            return false;
                        }
                    });
                } else {
                    this.audioplayer.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
                    frameLayout.addView(this.audioplayer);
                }
                this.audioplayer.setListener(new AVPlayerListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.3
                    @Override // com.inmobi.re.controller.util.AVPlayerListener
                    public void onPrepared(AVPlayer aVPlayer) {
                    }

                    @Override // com.inmobi.re.controller.util.AVPlayerListener
                    public void onError(AVPlayer aVPlayer) {
                        onComplete(aVPlayer);
                    }

                    @Override // com.inmobi.re.controller.util.AVPlayerListener
                    public void onComplete(AVPlayer aVPlayer) {
                        try {
                            if (playerProperties.isFullScreen()) {
                                ViewGroup viewGroup = (ViewGroup) aVPlayer.getBackGroundLayout().getParent();
                                if (viewGroup != null) {
                                    viewGroup.removeView(aVPlayer.getBackGroundLayout());
                                }
                            } else {
                                ViewGroup viewGroup2 = (ViewGroup) aVPlayer.getParent();
                                if (viewGroup2 != null) {
                                    viewGroup2.removeView(aVPlayer);
                                }
                            }
                        } catch (Exception e) {
                            Log.debug(Constants.RENDERING_LOG_TAG, "Problem removing the audio relativelayout", e);
                        }
                    }
                });
                this.audioplayer.play();
            }
        }
    }

    private boolean a(String str, String str2, Activity activity) {
        if (!this.audioPlayerList.isEmpty()) {
            this.audioplayer = this.audioPlayerList.get(str);
            if (this.audioplayer == null) {
                if (this.audioPlayerList.size() > 4) {
                    this.f3943a.raiseError("Too many audio players", "playAudio");
                    return false;
                }
                this.audioplayer = new AVPlayer(activity, this.f3943a);
            } else if (this.audioplayer.getMediaURL().equals(str2) || str2.length() == 0) {
                if (this.audioplayer.getState() == AVPlayer.playerState.PLAYING) {
                    return false;
                }
                if (this.audioplayer.getState() == AVPlayer.playerState.INIT) {
                    if (this.audioplayer.isPrepared()) {
                        this.audioplayer.start();
                    } else {
                        this.audioplayer.setAutoPlay(true);
                    }
                    return false;
                } else if (this.audioplayer.getState() == AVPlayer.playerState.PAUSED) {
                    this.audioplayer.start();
                    return false;
                } else {
                    JSController.PlayerProperties properties = this.audioplayer.getProperties();
                    String mediaURL = this.audioplayer.getMediaURL();
                    this.audioplayer.releasePlayer(false);
                    this.audioPlayerList.remove(str);
                    this.audioplayer = new AVPlayer(activity, this.f3943a);
                    this.audioplayer.setPlayData(properties, mediaURL);
                }
            } else {
                this.audioplayer.releasePlayer(false);
                this.audioPlayerList.remove(str);
                this.audioplayer = new AVPlayer(activity, this.f3943a);
            }
        } else {
            this.audioplayer = new AVPlayer(activity, this.f3943a);
        }
        return true;
    }

    public synchronized AVPlayer getCurrentAudioPlayer(String str) {
        AVPlayer aVPlayer;
        aVPlayer = null;
        if (this.audioplayer != null && this.audioplayer.getPropertyID().equalsIgnoreCase(str)) {
            aVPlayer = this.audioplayer;
        } else if (!this.audioPlayerList.isEmpty() && this.audioPlayerList.containsKey(str)) {
            aVPlayer = this.audioPlayerList.get(str);
        }
        return aVPlayer;
    }

    public void playVideoImpl(Bundle bundle, Activity activity) {
        JSController.PlayerProperties playerProperties;
        JSController.PlayerProperties playerProperties2 = (JSController.PlayerProperties) bundle.getParcelable(IMWebView.PLAYER_PROPERTIES);
        JSController.Dimensions dimensions = (JSController.Dimensions) bundle.getParcelable(IMWebView.DIMENSIONS);
        Log.debug(Constants.RENDERING_LOG_TAG, "Final dimensions: " + dimensions);
        String string = bundle.getString(IMWebView.EXPAND_URL);
        if (a(playerProperties2.id, string, activity, dimensions)) {
            this.f3943a.setBusy(true);
            if (string.length() == 0) {
                JSController.PlayerProperties properties = this.videoPlayer.getProperties();
                dimensions = this.videoPlayer.getPlayDimensions();
                this.videoPlayer.getMediaURL();
                playerProperties = properties;
            } else {
                this.videoPlayer.setPlayData(playerProperties2, string);
                this.videoPlayer.setPlayDimensions(dimensions);
                playerProperties = playerProperties2;
            }
            if (this.videoPlayer.getState() == AVPlayer.playerState.HIDDEN) {
                this.videoPlayer.pseudoPause = true;
                this.videoPlayer.show();
                return;
            }
            FrameLayout frameLayout = (FrameLayout) activity.findViewById(16908290);
            if (playerProperties.isFullScreen()) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
                layoutParams.addRule(13);
                this.videoPlayer.setLayoutParams(layoutParams);
                RelativeLayout relativeLayout = new RelativeLayout(activity);
                relativeLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.4
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        return true;
                    }
                });
                relativeLayout.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                frameLayout.addView(relativeLayout, new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent()));
                relativeLayout.addView(this.videoPlayer);
                this.videoPlayer.setBackGroundLayout(relativeLayout);
                this.videoPlayer.requestFocus();
                this.videoPlayer.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.5
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(View view, int i, KeyEvent keyEvent) {
                        if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                            Log.debug(Constants.RENDERING_LOG_TAG, "Back pressed while fullscreen video is playing");
                            MRAIDAudioVideoController.this.videoPlayer.releasePlayer(true);
                            return true;
                        }
                        return false;
                    }
                });
            } else {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(dimensions.width, dimensions.height);
                FrameLayout frameLayout2 = new FrameLayout(activity);
                if (this.f3943a.mExpandController.expandProperties == null) {
                    layoutParams2.leftMargin = dimensions.x;
                    layoutParams2.topMargin = dimensions.y;
                } else {
                    layoutParams2.leftMargin = dimensions.x + this.f3943a.mExpandController.expandProperties.currentX;
                    layoutParams2.topMargin = dimensions.y + this.f3943a.mExpandController.expandProperties.currentY;
                }
                layoutParams2.gravity = 3;
                this.videoPlayer.setLayoutParams(layoutParams2);
                frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent()));
                this.videoPlayer.setBackGroundLayout(frameLayout2);
                frameLayout2.addView(this.videoPlayer);
            }
            this.videoPlayer.setListener(new AVPlayerListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.6
                @Override // com.inmobi.re.controller.util.AVPlayerListener
                public void onPrepared(AVPlayer aVPlayer) {
                }

                @Override // com.inmobi.re.controller.util.AVPlayerListener
                public void onError(AVPlayer aVPlayer) {
                    onComplete(aVPlayer);
                }

                @Override // com.inmobi.re.controller.util.AVPlayerListener
                public void onComplete(AVPlayer aVPlayer) {
                    MRAIDAudioVideoController.this.f3943a.setBusy(false);
                    try {
                        ViewGroup backGroundLayout = aVPlayer.getBackGroundLayout();
                        if (backGroundLayout != null) {
                            ((ViewGroup) backGroundLayout.getParent()).removeView(aVPlayer.getBackGroundLayout());
                        }
                        aVPlayer.setBackGroundLayout(null);
                    } catch (Exception e) {
                        Log.debug(Constants.RENDERING_LOG_TAG, "Problem removing the video framelayout or relativelayout depending on video startstyle", e);
                    }
                    synchronized (this) {
                        if (MRAIDAudioVideoController.this.videoPlayer != null && aVPlayer.getPropertyID().equalsIgnoreCase(MRAIDAudioVideoController.this.videoPlayer.getPropertyID())) {
                            MRAIDAudioVideoController.this.videoPlayer = null;
                        }
                    }
                }
            });
            this.videoPlayer.play();
        }
    }

    public void validateVideoDimensions(JSController.Dimensions dimensions) {
        dimensions.width = (int) (dimensions.width * this.f3943a.getDensity());
        dimensions.height = (int) (dimensions.height * this.f3943a.getDensity());
        dimensions.x = (int) (dimensions.x * this.f3943a.getDensity());
        dimensions.y = (int) (dimensions.y * this.f3943a.getDensity());
    }

    private boolean a(String str, String str2, Activity activity, JSController.Dimensions dimensions) {
        if (this.videoPlayer == null || !str.equalsIgnoreCase(this.videoPlayer.getPropertyID())) {
            return b(str, str2, activity);
        }
        AVPlayer.playerState state = this.videoPlayer.getState();
        if (str.equalsIgnoreCase(this.videoPlayer.getPropertyID())) {
            String mediaURL = this.videoPlayer.getMediaURL();
            if (str2.length() == 0 || str2.equalsIgnoreCase(mediaURL)) {
                switch (state) {
                    case PAUSED:
                        this.videoPlayer.start();
                        a(this.videoPlayer, dimensions);
                        return false;
                    case PLAYING:
                        a(this.videoPlayer, dimensions);
                        return false;
                    case COMPLETED:
                        if (!this.videoPlayer.getProperties().doLoop()) {
                            this.videoPlayer.start();
                        }
                        a(this.videoPlayer, dimensions);
                        return false;
                    case INIT:
                        if (this.videoPlayer.isPrepared()) {
                            this.videoPlayer.start();
                        } else {
                            this.videoPlayer.setAutoPlay(true);
                        }
                        a(this.videoPlayer, dimensions);
                        return false;
                    default:
                        return false;
                }
            } else if (!URLUtil.isValidUrl(str2)) {
                this.f3943a.raiseError("Request must specify a valid URL", JSInterface.ACTION_PLAY_VIDEO);
                return false;
            } else {
                this.videoPlayer.releasePlayer(false);
                this.videoPlayer = new AVPlayer(activity, this.f3943a);
            }
        }
        return true;
    }

    private void a(AVPlayer aVPlayer, JSController.Dimensions dimensions) {
        int density = (int) ((-99999.0f) * this.f3943a.getDensity());
        if (aVPlayer.isInlineVideo()) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dimensions.width, dimensions.height);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) aVPlayer.getLayoutParams();
            if (dimensions.x == density && dimensions.y == density) {
                layoutParams.leftMargin = layoutParams2.leftMargin;
                layoutParams.topMargin = layoutParams2.topMargin;
            } else {
                layoutParams.leftMargin = dimensions.x;
                layoutParams.topMargin = dimensions.y;
            }
            layoutParams.gravity = 3;
            aVPlayer.setLayoutParams(layoutParams);
        }
    }

    private boolean b(String str, String str2, Activity activity) {
        if ((str2.length() != 0 && !URLUtil.isValidUrl(str2)) || (str2.length() == 0 && !this.videoPlayerList.containsKey(str))) {
            this.f3943a.raiseError("Request must specify a valid URL", JSInterface.ACTION_PLAY_VIDEO);
            return false;
        }
        if (this.videoPlayer != null) {
            this.videoPlayer.hide();
            this.videoPlayerList.put(this.videoPlayer.getPropertyID(), this.videoPlayer);
        }
        AVPlayer a2 = a(str);
        if (a2 == null) {
            this.videoPlayer = new AVPlayer(activity, this.f3943a);
        } else {
            this.videoPlayer = a2;
        }
        if (str2.length() == 0) {
            this.videoPlayer.setPlayData(a2.getProperties(), a2.getMediaURL());
            this.videoPlayer.setPlayDimensions(a2.getPlayDimensions());
        }
        this.videoPlayerList.remove(str);
        return true;
    }

    public synchronized AVPlayer getVideoPlayer(String str) {
        AVPlayer aVPlayer;
        aVPlayer = null;
        if (this.videoPlayer != null && this.videoPlayer.getPropertyID().equalsIgnoreCase(str)) {
            aVPlayer = this.videoPlayer;
        } else if (!this.videoPlayerList.isEmpty() && this.videoPlayerList.containsKey(str)) {
            aVPlayer = this.videoPlayerList.get(str);
        }
        return aVPlayer;
    }

    private AVPlayer a(String str) {
        if (!this.videoPlayerList.isEmpty()) {
            return this.videoPlayerList.get(str);
        }
        return null;
    }

    public void releaseAllPlayers() {
        if (this.videoPlayer != null) {
            this.videoPlayerList.put(this.videoPlayer.getPropertyID(), this.videoPlayer);
        }
        try {
            for (Object obj : this.videoPlayerList.values().toArray()) {
                try {
                    ((AVPlayer) obj).releasePlayer(IMWebView.userInitiatedClose);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Unable to release player");
                }
            }
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMwebview release all players ", e2);
        }
        this.videoPlayerList.clear();
        this.videoPlayer = null;
        try {
            for (Object obj2 : this.audioPlayerList.values().toArray()) {
                try {
                    ((AVPlayer) obj2).releasePlayer(IMWebView.userInitiatedClose);
                } catch (Exception e3) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Unable to release player");
                }
            }
        } catch (Exception e4) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMwebview release all players ", e4);
        }
        IMWebView.userInitiatedClose = false;
        this.audioPlayerList.clear();
        this.audioplayer = null;
    }

    public void hidePlayers() {
        Log.debug(Constants.RENDERING_LOG_TAG, "MRAIDAudioVideoController: hiding all players");
        if (this.videoPlayer != null && this.videoPlayer.getState() != AVPlayer.playerState.RELEASED) {
            this.videoPlayerList.put(this.videoPlayer.getPropertyID(), this.videoPlayer);
            this.videoPlayer.hide();
        }
        for (Map.Entry<String, AVPlayer> entry : this.audioPlayerList.entrySet()) {
            AVPlayer value = entry.getValue();
            switch (value.getState()) {
                case PLAYING:
                    value.pause();
                    break;
                case INIT:
                    value.releasePlayer(false);
                    this.audioPlayerList.remove(entry.getKey());
                    break;
            }
        }
    }

    public void mediaPlayerReleased(AVPlayer aVPlayer) {
        if (aVPlayer == this.audioplayer) {
            this.audioplayer = null;
        }
        if (aVPlayer == this.videoPlayer) {
            this.videoPlayer = null;
        }
        if (!a(this.audioPlayerList, aVPlayer)) {
            a(this.videoPlayerList, aVPlayer);
        }
    }

    private boolean a(Hashtable<String, AVPlayer> hashtable, AVPlayer aVPlayer) {
        String str;
        Iterator<Map.Entry<String, AVPlayer>> it = hashtable.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            Map.Entry<String, AVPlayer> next = it.next();
            if (next.getValue() == aVPlayer) {
                str = next.getKey();
                break;
            }
        }
        if (str != null) {
            this.audioPlayerList.remove(str);
            return true;
        }
        return false;
    }
}
