package com.smaato.soma.internal;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.VideoView;
import com.smaato.soma.VideoInterface;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.StartingVideoFailed;
import com.smaato.soma.exception.VideoPlayerInstantiationException;
import com.smaato.soma.l;
import com.smaato.soma.p;
import com.smaato.soma.t;
/* loaded from: classes3.dex */
public class VideoPlayerView extends FrameLayout implements VideoInterface {

    /* renamed from: a  reason: collision with root package name */
    Context f4951a;
    VideoView b;
    VideoInterface c;
    ProgressBar d;
    p e;
    VideoInterface.VideoState f;
    t g;

    public VideoPlayerView(final Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4951a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = VideoInterface.VideoState.EMPTY;
        this.g = new t() { // from class: com.smaato.soma.internal.VideoPlayerView.1
            @Override // com.smaato.soma.t
            public void a(VideoInterface videoInterface) throws StartingVideoFailed {
                try {
                    videoInterface.a();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new StartingVideoFailed(e2);
                }
            }

            @Override // com.smaato.soma.t
            public void b(VideoInterface videoInterface) {
            }
        };
        new l<Void>() { // from class: com.smaato.soma.internal.VideoPlayerView.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                VideoPlayerView.this.a(context);
                return null;
            }
        }.c();
    }

    public VideoPlayerView(final Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4951a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = VideoInterface.VideoState.EMPTY;
        this.g = new t() { // from class: com.smaato.soma.internal.VideoPlayerView.1
            @Override // com.smaato.soma.t
            public void a(VideoInterface videoInterface) throws StartingVideoFailed {
                try {
                    videoInterface.a();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new StartingVideoFailed(e2);
                }
            }

            @Override // com.smaato.soma.t
            public void b(VideoInterface videoInterface) {
            }
        };
        new l<Void>() { // from class: com.smaato.soma.internal.VideoPlayerView.4
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                VideoPlayerView.this.a(context);
                return null;
            }
        }.c();
    }

    public void setVideoListener(t tVar) {
        this.g = tVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) throws VideoPlayerInstantiationException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.VideoPlayerView.5
            });
            this.f4951a = context;
            this.c = this;
            this.b = new VideoView(context);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            this.b.setLayoutParams(layoutParams);
            this.b.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.smaato.soma.internal.VideoPlayerView.6
                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    new l<Void>() { // from class: com.smaato.soma.internal.VideoPlayerView.6.1
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Void b() throws Exception {
                            VideoPlayerView.this.d.setEnabled(false);
                            VideoPlayerView.this.d.setVisibility(8);
                            VideoPlayerView.this.f = VideoInterface.VideoState.STOPPED;
                            VideoPlayerView.this.g.a(VideoPlayerView.this.c);
                            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Starting Video", 1, DebugCategory.VERVOSE));
                            return null;
                        }
                    }.c();
                }
            });
            this.b.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.smaato.soma.internal.VideoPlayerView.7
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    new l<Void>() { // from class: com.smaato.soma.internal.VideoPlayerView.7.1
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Void b() throws Exception {
                            VideoPlayerView.this.f = VideoInterface.VideoState.FINISHED;
                            VideoPlayerView.this.g.b(VideoPlayerView.this.c);
                            return null;
                        }
                    }.c();
                }
            });
            this.b.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.smaato.soma.internal.VideoPlayerView.8
                @Override // android.media.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    return new l<Boolean>() { // from class: com.smaato.soma.internal.VideoPlayerView.8.1
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Boolean b() throws Exception {
                            VideoPlayerView.this.d.setEnabled(false);
                            VideoPlayerView.this.d.setVisibility(8);
                            return false;
                        }
                    }.c().booleanValue();
                }
            });
            this.b.setOnTouchListener(new View.OnTouchListener() { // from class: com.smaato.soma.internal.VideoPlayerView.9
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return new l<Boolean>() { // from class: com.smaato.soma.internal.VideoPlayerView.9.1
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Boolean b() throws Exception {
                            if (VideoPlayerView.this.e != null) {
                                VideoPlayerView.this.e.a(VideoPlayerView.this.f4951a);
                            }
                            return true;
                        }
                    }.c().booleanValue();
                }
            });
            addView(this.b);
            this.d = new ProgressBar(context);
            this.d.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            this.d.setIndeterminate(true);
            addView(this.d);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new VideoPlayerInstantiationException(e2);
        }
    }

    @Override // com.smaato.soma.VideoInterface
    public void a() {
        new l<Void>() { // from class: com.smaato.soma.internal.VideoPlayerView.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                VideoPlayerView.this.b.start();
                VideoPlayerView.this.f = VideoInterface.VideoState.RUNNING;
                return null;
            }
        }.c();
    }

    public VideoInterface.VideoState getState() {
        return this.f;
    }
}
