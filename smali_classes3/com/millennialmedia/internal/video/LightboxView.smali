.class public Lcom/millennialmedia/internal/video/LightboxView;
.super Landroid/widget/RelativeLayout;
.source "LightboxView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;,
        Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private volatile E:I

.field private volatile F:Z

.field private volatile G:Z

.field private volatile H:Z

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/millennialmedia/internal/MMWebView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/millennialmedia/internal/video/MMVideoView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

.field private i:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Landroid/view/WindowManager;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:F

.field private t:I

.field private u:I

.field private v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private w:Z

.field private x:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/LightboxView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    .line 67
    iput-object v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->x:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 70
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->y:Z

    .line 71
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->z:Z

    .line 72
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->A:Z

    .line 73
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->B:Z

    .line 74
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->C:Z

    .line 75
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->D:Z

    .line 77
    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 78
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->F:Z

    .line 79
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->G:Z

    .line 80
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    .line 130
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->n:Landroid/view/WindowManager;

    .line 131
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    .line 133
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 134
    sget v0, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_width:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    .line 135
    sget v0, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_height:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    .line 136
    sget v0, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_bottom_margin:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->r:I

    .line 137
    sget v0, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_right_margin:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->q:I

    .line 138
    sget v0, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_top_margin:I

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->t:I

    .line 139
    sget v0, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_fullscreen_companion_top_margin:I

    .line 140
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->u:I

    .line 142
    const v0, 0x106000d

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 143
    invoke-virtual {p0, p0}, Lcom/millennialmedia/internal/video/LightboxView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    iput-object p3, p0, Lcom/millennialmedia/internal/video/LightboxView;->i:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    .line 146
    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView;->h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    .line 148
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/video/MMVideoView;-><init>(Landroid/content/Context;ZZLjava/util/Map;Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 149
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    sget v1, Lcom/millennialmedia/R$id;->mmadsdk_light_box_video_view:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setId(I)V

    .line 150
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v1, p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 151
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    const v1, 0x106000c

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setBackgroundColor(I)V

    .line 153
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 156
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/millennialmedia/R$drawable;->mmadsdk_lightbox_down:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/LightboxView$1;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 168
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 174
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_right_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 176
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 178
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->f:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 183
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/millennialmedia/R$drawable;->mmadsdk_lightbox_replay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/LightboxView$2;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 199
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_replay_button_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 200
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_replay_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v2, Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 208
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    .line 210
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    .line 211
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 212
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/millennialmedia/R$color;->mmadsdk_lightbox_curtain_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 214
    iget-object v0, p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->imageUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$3;

    invoke-direct {v0, p0, p2}, Lcom/millennialmedia/internal/video/LightboxView$3;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 238
    new-instance v0, Lcom/millennialmedia/internal/MMWebView;

    invoke-static {}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->getDefault()Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    move-result-object v1

    .line 239
    invoke-direct {p0, p3}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    .line 241
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    iget-object v1, p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->webContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    .line 243
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->u:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 248
    const/4 v1, 0x3

    sget v2, Lcom/millennialmedia/R$id;->mmadsdk_light_box_video_view:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 250
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    invoke-static {p0, v1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v1, :cond_1

    .line 257
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p0, v1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    return-void
.end method

.method private a(Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
    .locals 1

    .prologue
    .line 1385
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$16;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$16;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->x:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(JJ)V
    .locals 3

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->x:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->x:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1216
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$15;

    invoke-direct {v0, p0, p3, p4}, Lcom/millennialmedia/internal/video/LightboxView$15;-><init>(Lcom/millennialmedia/internal/video/LightboxView;J)V

    invoke-static {v0, p1, p2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->x:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1250
    return-void
.end method

.method private a(Landroid/graphics/Point;)V
    .locals 4

    .prologue
    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 750
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 752
    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$7;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/LightboxView$7;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V

    .line 786
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$8;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/LightboxView$8;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 805
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 806
    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 807
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/LightboxView;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/LightboxView;JJ)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/millennialmedia/internal/video/LightboxView;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1126
    if-eqz p1, :cond_0

    .line 1127
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$14;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$14;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1142
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/LightboxView;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->G:Z

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/video/LightboxView;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->G:Z

    return p1
.end method

.method static synthetic b(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 812
    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    .line 814
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 815
    iget v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 817
    :goto_0
    iput v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 818
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 819
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 821
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 822
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 824
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 825
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 826
    iget-boolean v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v3, :cond_1

    .line 827
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 830
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v1

    .line 832
    new-instance v3, Lcom/millennialmedia/internal/video/LightboxView$9;

    invoke-direct {v3, p0, v2, v1}, Lcom/millennialmedia/internal/video/LightboxView$9;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 921
    iget v1, v2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    .line 922
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    div-float/2addr v1, v2

    float-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 924
    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$10;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/LightboxView$10;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 952
    invoke-virtual {p0, v3}, Lcom/millennialmedia/internal/video/LightboxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 953
    return-void

    :cond_2
    move v0, v1

    .line 815
    goto :goto_0
.end method

.method private b(Landroid/graphics/Point;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 958
    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    .line 960
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 962
    :goto_0
    const/4 v3, 0x4

    iput v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 963
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 965
    iget-boolean v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->D:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v3, :cond_0

    .line 966
    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->D:Z

    .line 967
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->trackingEvents:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->a(Ljava/util/List;)V

    .line 970
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 971
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v1, :cond_1

    .line 972
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 974
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 976
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v1, :cond_2

    .line 977
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 980
    :cond_2
    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$11;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$11;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V

    .line 1046
    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 1047
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1049
    new-instance v2, Lcom/millennialmedia/internal/video/LightboxView$12;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/internal/video/LightboxView$12;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1079
    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1080
    return-void

    :cond_3
    move v0, v2

    .line 960
    goto :goto_0
.end method

.method static synthetic b(Lcom/millennialmedia/internal/video/LightboxView;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    return p1
.end method

.method private c()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1085
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1086
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0, v3}, Lcom/millennialmedia/internal/MMWebView;->setAlpha(F)V

    .line 1087
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$13;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/LightboxView$13;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1120
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1121
    return-void
.end method

.method private c(Landroid/graphics/Point;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1286
    iput-boolean v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    .line 1287
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 1288
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 1290
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Point;->x:I

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1293
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->t:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1295
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1297
    invoke-virtual {p0, v3}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 1298
    invoke-virtual {p0, v3}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 1299
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0, v3}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 1301
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1303
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1304
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1306
    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 1307
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1309
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->D:Z

    if-nez v0, :cond_0

    .line 1310
    iput-boolean v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->D:Z

    .line 1311
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->trackingEvents:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Ljava/util/List;)V

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 1316
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1317
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    .line 1318
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->c()V

    .line 1319
    return-void
.end method

.method static synthetic c(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->b()V

    return-void
.end method

.method static synthetic d(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    .line 1358
    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 1359
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->mute()V

    .line 1360
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 1362
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 1364
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 1365
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 1366
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 1367
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 1368
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1369
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1370
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1371
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 1372
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1374
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1376
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->u:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1377
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1378
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1379
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    .line 1380
    return-void
.end method

.method private d(Landroid/graphics/Point;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    .line 1325
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 1326
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 1328
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1331
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->t:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1333
    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 1334
    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 1335
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 1337
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1339
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1341
    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 1342
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1343
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1345
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1347
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 1349
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1350
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    .line 1351
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->c()V

    .line 1352
    return-void
.end method

.method static synthetic e(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    return v0
.end method

.method static synthetic f(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 1201
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1202
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->n:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1204
    return-object v0
.end method

.method static synthetic h(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    return-object v0
.end method

.method static synthetic i(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    return v0
.end method

.method static synthetic j(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    return v0
.end method

.method static synthetic k(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->t:I

    return v0
.end method

.method static synthetic l(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->u:I

    return v0
.end method

.method static synthetic m(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->q:I

    return v0
.end method

.method static synthetic n(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->r:I

    return v0
.end method

.method static synthetic o(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic p(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->i:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    return-object v0
.end method

.method static synthetic q(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->c()V

    return-void
.end method

.method private setHeight(I)V
    .locals 3

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1195
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1196
    return-void
.end method


# virtual methods
.method public animateToGone(Z)V
    .locals 4

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 679
    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$5;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/LightboxView$5;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    .line 712
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 713
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$6;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$6;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 739
    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 740
    return-void
.end method

.method public getDefaultDimensions()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1159
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDefaultPosition()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1149
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->q:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    sub-int/2addr v1, v2

    .line 1151
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->r:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    sub-int/2addr v0, v2

    .line 1153
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->F:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1166
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1168
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1170
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    .line 1172
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 1174
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1176
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 1180
    return-void

    .line 1170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 319
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->G:Z

    .line 321
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->C:Z

    if-nez v0, :cond_1

    .line 322
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->a:Ljava/lang/String;

    const-string v1, "LightboxView firing complete event"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->C:Z

    .line 326
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->complete:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Ljava/util/List;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->x:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->x:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->x:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 334
    :cond_2
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/LightboxView$4;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1256
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->clearAnimation()V

    .line 1257
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1259
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_4

    .line 1260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    .line 1262
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-ne v1, v5, :cond_2

    .line 1263
    :cond_0
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->c(Landroid/graphics/Point;)V

    .line 1281
    :cond_1
    :goto_0
    return-void

    .line 1264
    :cond_2
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-ne v0, v3, :cond_3

    .line 1265
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 1267
    :cond_3
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->d()V

    goto :goto_0

    .line 1270
    :cond_4
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1271
    iput-boolean v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    .line 1273
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-ne v1, v5, :cond_6

    .line 1274
    :cond_5
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->d(Landroid/graphics/Point;)V

    goto :goto_0

    .line 1275
    :cond_6
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-ne v0, v3, :cond_7

    .line 1276
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 1278
    :cond_7
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->d()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->v:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    .line 1188
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1189
    return-void
.end method

.method public onError(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->i:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onFailed()V

    .line 401
    return-void
.end method

.method public onMuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->F:Z

    .line 280
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->i:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onPrepared()V

    .line 281
    return-void
.end method

.method public declared-synchronized onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 3

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    .line 353
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->z:Z

    if-nez v0, :cond_1

    if-lt p2, v1, :cond_1

    .line 354
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->a:Ljava/lang/String;

    const-string v2, "LightboxView firing q1 event"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->z:Z

    .line 358
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Ljava/util/List;)V

    .line 361
    :cond_1
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->A:Z

    if-nez v0, :cond_3

    mul-int/lit8 v0, v1, 0x2

    if-lt p2, v0, :cond_3

    .line 362
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->a:Ljava/lang/String;

    const-string v2, "LightboxView firing midpoint event"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->A:Z

    .line 366
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Ljava/util/List;)V

    .line 369
    :cond_3
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->B:Z

    if-nez v0, :cond_5

    mul-int/lit8 v0, v1, 0x3

    if-lt p2, v0, :cond_5

    .line 370
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->a:Ljava/lang/String;

    const-string v1, "LightboxView firing q3 event"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->B:Z

    .line 374
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_5
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->i:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onReadyToStart()V

    .line 288
    return-void
.end method

.method public onSeek(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public onStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->y:Z

    if-nez v0, :cond_1

    .line 295
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->a:Ljava/lang/String;

    const-string v1, "LightboxView firing start event"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->y:Z

    .line 299
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->h:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Ljava/util/List;)V

    .line 301
    :cond_1
    return-void
.end method

.method public onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->H:Z

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    .line 671
    :goto_0
    return v0

    .line 418
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->l:F

    .line 420
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->m:F

    .line 422
    const/4 v0, 0x1

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 425
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v6

    .line 427
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 430
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->l:F

    sub-float/2addr v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->m:F

    sub-float/2addr v4, v1

    float-to-double v4, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 431
    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 432
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v7

    .line 434
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 435
    :cond_2
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-nez v2, :cond_6

    .line 436
    iget v2, v7, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->j:F

    .line 437
    iget v2, v7, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->k:F

    .line 445
    :goto_1
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->l:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->m:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_7

    .line 446
    const/4 v2, 0x1

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 487
    :cond_3
    :goto_2
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-eqz v2, :cond_5

    .line 488
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 489
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->l:F

    sub-float v0, v1, v0

    .line 490
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->j:F

    sub-float v0, v1, v0

    .line 493
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, v6, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 494
    iget v0, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 497
    :cond_4
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 613
    :cond_5
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 439
    :cond_6
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->j:F

    .line 440
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->k:F

    goto :goto_1

    .line 448
    :cond_7
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->m:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_a

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    .line 449
    const/4 v2, 0x2

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 451
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 452
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 455
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 458
    :cond_8
    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 459
    int-to-float v2, v2

    iget v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->m:F

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->s:F

    .line 461
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v2, :cond_9

    .line 462
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 464
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 465
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .line 467
    :cond_a
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->m:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 468
    const/4 v2, 0x3

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    .line 470
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 471
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->c:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 473
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 474
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    sub-int/2addr v2, v3

    .line 475
    iget v3, v6, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->m:F

    sub-float/2addr v3, v4

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    .line 476
    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->s:F

    .line 478
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v2, :cond_b

    .line 479
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 481
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 482
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .line 499
    :cond_c
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    .line 500
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->m:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->s:F

    mul-float/2addr v0, v1

    .line 501
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->k:F

    sub-float v5, v1, v0

    .line 502
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->r:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v4, v0

    .line 503
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 504
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    iget v2, v6, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int v3, v1, v2

    .line 505
    iget v1, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->q:I

    iget v8, p0, Lcom/millennialmedia/internal/video/LightboxView;->q:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    sub-int/2addr v2, v8

    sub-int v2, v1, v2

    .line 508
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->t:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v8, p0, Lcom/millennialmedia/internal/video/LightboxView;->t:I

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 509
    const/4 v8, 0x0

    iget v9, p0, Lcom/millennialmedia/internal/video/LightboxView;->u:I

    iget v10, p0, Lcom/millennialmedia/internal/video/LightboxView;->u:I

    int-to-float v10, v10

    mul-float/2addr v0, v10

    float-to-int v0, v0

    sub-int v0, v9, v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 512
    iget v8, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    if-le v3, v8, :cond_d

    iget v8, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    if-le v4, v8, :cond_d

    iget v8, v7, Landroid/graphics/Point;->x:I

    if-ge v2, v8, :cond_d

    iget v8, v7, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_f

    .line 515
    :cond_d
    const/4 v1, 0x0

    .line 516
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->u:I

    .line 517
    iget v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    .line 518
    iget v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    .line 519
    iget v2, v7, Landroid/graphics/Point;->y:I

    int-to-float v5, v2

    .line 520
    iget v2, v7, Landroid/graphics/Point;->x:I

    .line 521
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 534
    :goto_4
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 535
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 537
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 539
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    .line 540
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 542
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 544
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v1, :cond_e

    .line 545
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 548
    :cond_e
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 549
    invoke-virtual {p0, v6}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 550
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 551
    invoke-direct {p0, v5}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 552
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->requestLayout()V

    .line 553
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->invalidate()V

    goto/16 :goto_3

    .line 523
    :cond_f
    iget v7, v6, Landroid/graphics/Point;->x:I

    if-ge v3, v7, :cond_10

    iget v7, v6, Landroid/graphics/Point;->y:I

    if-ge v4, v7, :cond_10

    if-lez v2, :cond_10

    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_21

    .line 526
    :cond_10
    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 527
    iget v4, v6, Landroid/graphics/Point;->y:I

    .line 528
    const/4 v0, 0x0

    .line 529
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->t:I

    .line 530
    const/4 v5, 0x0

    .line 531
    const/4 v2, 0x0

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_4

    .line 555
    :cond_11
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 556
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->m:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->s:F

    mul-float/2addr v0, v1

    .line 557
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->k:F

    sub-float v5, v1, v0

    .line 558
    iget v1, v6, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v4, v0

    .line 559
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 560
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    iget v2, v6, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int v3, v1, v2

    .line 561
    iget v1, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->q:I

    iget v8, p0, Lcom/millennialmedia/internal/video/LightboxView;->q:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    sub-int/2addr v2, v8

    sub-int v2, v1, v2

    .line 564
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->t:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 565
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v0, v9, v0

    iget v9, p0, Lcom/millennialmedia/internal/video/LightboxView;->u:I

    int-to-float v9, v9

    mul-float/2addr v0, v9

    float-to-int v0, v0

    .line 566
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 568
    iget v8, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    if-le v3, v8, :cond_12

    iget v8, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    if-le v4, v8, :cond_12

    iget v8, v7, Landroid/graphics/Point;->x:I

    if-ge v2, v8, :cond_12

    iget v8, v7, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_14

    .line 571
    :cond_12
    const/4 v1, 0x0

    .line 572
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->u:I

    .line 573
    iget v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->o:I

    .line 574
    iget v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->p:I

    .line 575
    iget v2, v7, Landroid/graphics/Point;->y:I

    int-to-float v5, v2

    .line 576
    iget v2, v7, Landroid/graphics/Point;->x:I

    .line 577
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 590
    :goto_5
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 591
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->g:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    :cond_13
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 595
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 597
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 599
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->b:Landroid/widget/FrameLayout;

    .line 600
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 602
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 604
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 605
    invoke-virtual {p0, v6}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 606
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 607
    invoke-direct {p0, v5}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 608
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->requestLayout()V

    .line 609
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->invalidate()V

    goto/16 :goto_3

    .line 579
    :cond_14
    iget v7, v6, Landroid/graphics/Point;->x:I

    if-ge v3, v7, :cond_15

    iget v7, v6, Landroid/graphics/Point;->y:I

    if-ge v4, v7, :cond_15

    if-lez v2, :cond_15

    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_20

    .line 582
    :cond_15
    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 583
    iget v4, v6, Landroid/graphics/Point;->y:I

    .line 584
    const/4 v0, 0x0

    .line 585
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->t:I

    .line 586
    const/4 v5, 0x0

    .line 587
    const/4 v2, 0x0

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 615
    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 616
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 618
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 619
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_17

    .line 620
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Landroid/graphics/Point;)V

    .line 625
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 622
    :cond_17
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->b()V

    goto :goto_6

    .line 627
    :cond_18
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 628
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_19

    .line 629
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->b()V

    .line 634
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 631
    :cond_19
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Landroid/graphics/Point;)V

    goto :goto_7

    .line 636
    :cond_1a
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 639
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getTranslationX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b

    .line 640
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->animateToGone(Z)V

    .line 645
    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 642
    :cond_1b
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Landroid/graphics/Point;)V

    goto :goto_8

    .line 647
    :cond_1c
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    if-nez v1, :cond_1e

    .line 648
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 652
    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1f

    if-ne p1, p0, :cond_1f

    .line 653
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->w:Z

    if-nez v1, :cond_1d

    .line 654
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    :cond_1d
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Landroid/graphics/Point;)V

    .line 658
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 661
    :cond_1e
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->E:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 662
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 663
    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1f

    .line 664
    const-wide/16 v0, 0x9c4

    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/millennialmedia/internal/video/LightboxView;->a(JJ)V

    .line 666
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 671
    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_20
    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto/16 :goto_5

    :cond_21
    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto/16 :goto_4
.end method

.method public onUnmuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->e:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 267
    return-void
.end method
