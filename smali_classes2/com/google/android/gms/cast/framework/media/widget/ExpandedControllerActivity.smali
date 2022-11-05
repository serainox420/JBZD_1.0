.class public abstract Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/widget/ControlButtonsContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zza;,
        Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zzb;
    }
.end annotation


# instance fields
.field private zzapY:Lcom/google/android/gms/cast/framework/SessionManager;

.field private zzatM:Landroid/widget/SeekBar;

.field private final zzatv:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

.field private zzauA:I

.field private zzauB:I

.field private zzauC:I

.field private zzauD:Landroid/widget/TextView;

.field private zzauE:Landroid/widget/ImageView;

.field private zzauF:Landroid/widget/ImageView;

.field private zzauG:Lcom/google/android/gms/internal/zzxk;

.field private zzauH:[I

.field private zzauI:[Landroid/widget/ImageView;

.field private zzauJ:Landroid/view/View;

.field private zzauK:Landroid/widget/ImageView;

.field private zzauL:Landroid/widget/TextView;

.field private zzauM:Landroid/widget/TextView;

.field private zzauN:Lcom/google/android/gms/internal/zzxf;

.field private zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

.field private final zzauo:Lcom/google/android/gms/cast/framework/SessionManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/cast/framework/SessionManagerListener",
            "<",
            "Lcom/google/android/gms/cast/framework/CastSession;",
            ">;"
        }
    .end annotation
.end field

.field private zzaup:I

.field private zzauq:I

.field private zzaur:I

.field private zzaus:I

.field private zzaut:I

.field private zzauu:I

.field private zzauv:I

.field private zzauw:I

.field private zzaux:I

.field private zzauy:I

.field private zzauz:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zzb;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zzb;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$1;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauo:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zza;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$zza;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$1;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatv:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauI:[Landroid/widget/ImageView;

    return-void
.end method

.method private getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzapY:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauL:Landroid/widget/TextView;

    return-object v0
.end method

.method private zza(Landroid/widget/RelativeLayout;)Lcom/google/android/gms/internal/zzxk;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzxk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzxk;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/google/android/gms/R$id;->end_text:I

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x1

    sget v3, Lcom/google/android/gms/R$id;->start_text:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x6

    sget v3, Lcom/google/android/gms/R$id;->seek_bar:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x7

    sget v3, Lcom/google/android/gms/R$id;->seek_bar:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x5

    sget v3, Lcom/google/android/gms/R$id;->seek_bar:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x8

    sget v3, Lcom/google/android/gms/R$id;->seek_bar:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzxk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzxk;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->cast_seek_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzxk;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/zzxk;->setBackgroundColor(I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private zza(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$drawable;->quantum_ic_keyboard_arrow_down_white_36:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(I)V

    :cond_0
    return-void
.end method

.method private zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    if-ne p3, v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_custom:I

    if-eq p3, v1, :cond_0

    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_play_pause_toggle:I

    if-ne p3, v1, :cond_2

    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_skip_previous:I

    if-ne p3, v1, :cond_3

    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzb(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_skip_next:I

    if-ne p3, v1, :cond_4

    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzc(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    goto :goto_0

    :cond_4
    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_rewind_30_seconds:I

    if-ne p3, v1, :cond_5

    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzd(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    goto :goto_0

    :cond_5
    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_forward_30_seconds:I

    if-ne p3, v1, :cond_6

    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zze(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    goto :goto_0

    :cond_6
    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_mute_toggle:I

    if-ne p3, v1, :cond_7

    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzf(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    goto :goto_0

    :cond_7
    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_closed_caption:I

    if-ne p3, v1, :cond_0

    invoke-direct {p0, v0, p4}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzg(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    goto :goto_0
.end method

.method private zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget v0, Lcom/google/android/gms/R$id;->background_image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauE:Landroid/widget/ImageView;

    sget v0, Lcom/google/android/gms/R$id;->blurred_background_image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauF:Landroid/widget/ImageView;

    sget v0, Lcom/google/android/gms/R$id;->background_place_holder_image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauE:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v4, 0x4

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-virtual {p2, v2, v3, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToImageOfCurrentItem(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/ImageHints;Landroid/view/View;)V

    sget v0, Lcom/google/android/gms/R$id;->status_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauD:Landroid/widget/TextView;

    sget v0, Lcom/google/android/gms/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToLoadingIndicator(Landroid/view/View;)V

    sget v0, Lcom/google/android/gms/R$id;->start_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/google/android/gms/R$id;->end_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/google/android/gms/R$id;->live_stream_indicator:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/google/android/gms/R$id;->seek_bar:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzue()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzug()V

    sget v3, Lcom/google/android/gms/R$id;->live_stream_seek_bar:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToStreamPosition(Landroid/widget/TextView;Z)V

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToStreamDuration(Landroid/widget/TextView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindSeekBar(Landroid/widget/SeekBar;)V

    new-instance v0, Lcom/google/android/gms/internal/zzxp;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/zzxp;-><init>(Landroid/widget/SeekBar;Landroid/widget/SeekBar;)V

    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToUIController(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauI:[Landroid/widget/ImageView;

    sget v0, Lcom/google/android/gms/R$id;->button_0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v7

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauI:[Landroid/widget/ImageView;

    sget v0, Lcom/google/android/gms/R$id;->button_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauI:[Landroid/widget/ImageView;

    sget v0, Lcom/google/android/gms/R$id;->button_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v8

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauI:[Landroid/widget/ImageView;

    sget v0, Lcom/google/android/gms/R$id;->button_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v9

    sget v0, Lcom/google/android/gms/R$id;->button_0:I

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauH:[I

    aget v1, v1, v7

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    sget v0, Lcom/google/android/gms/R$id;->button_1:I

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauH:[I

    aget v1, v1, v6

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    sget v0, Lcom/google/android/gms/R$id;->button_play_pause_toggle:I

    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_play_pause_toggle:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    sget v0, Lcom/google/android/gms/R$id;->button_2:I

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauH:[I

    aget v1, v1, v8

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    sget v0, Lcom/google/android/gms/R$id;->button_3:I

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauH:[I

    aget v1, v1, v9

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    sget v0, Lcom/google/android/gms/R$id;->ad_container:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauJ:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauJ:Landroid/view/View;

    sget v1, Lcom/google/android/gms/R$id;->ad_image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauK:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauJ:Landroid/view/View;

    sget v1, Lcom/google/android/gms/R$id;->ad_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauM:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauJ:Landroid/view/View;

    sget v1, Lcom/google/android/gms/R$id;->ad_in_progress_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauL:Landroid/widget/TextView;

    sget v0, Lcom/google/android/gms/R$id;->seek_bar_controls:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/widget/RelativeLayout;)Lcom/google/android/gms/internal/zzxk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauG:Lcom/google/android/gms/internal/zzxk;

    return-void
.end method

.method private zza(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaup:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauu:I

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaut:I

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauv:I

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToPlayPauseToggle(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauK:Landroid/widget/ImageView;

    return-object v0
.end method

.method private zzb(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaup:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauw:I

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->cast_skip_prev:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToSkipPrev(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    return-object v0
.end method

.method private zzc(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaup:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaux:I

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->cast_skip_next:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToSkipNext(Landroid/view/View;I)V

    return-void
.end method

.method private zzd(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaup:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauy:I

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->cast_rewind_30:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToRewind(Landroid/view/View;J)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzuj()V

    return-void
.end method

.method private zze(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaup:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauz:I

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->cast_forward_30:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToForward(Landroid/view/View;J)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzuk()V

    return-void
.end method

.method private zzf(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaup:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauA:I

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindImageViewToMuteToggle(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzui()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauD:Landroid/widget/TextView;

    return-object v0
.end method

.method private zzg(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaup:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauB:I

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zzb(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindViewToClosedCaption(Landroid/view/View;)V

    return-void
.end method

.method private zzuc()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$attr;->selectableItemBackgroundBorderless:I

    aput v1, v0, v2

    sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I

    aput v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaup:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauq:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private zzud()V
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/R$styleable;->CastExpandedController:[I

    sget v4, Lcom/google/android/gms/R$attr;->castExpandedControllerStyle:I

    sget v5, Lcom/google/android/gms/R$style;->CastExpandedController:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castButtonColor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauC:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castSeekBarProgressDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaur:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castSeekBarThumbDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaus:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castPlayButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaut:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castPauseButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauu:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castStopButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauv:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castSkipPreviousButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauw:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castSkipNextButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaux:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castRewind30ButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauy:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castForward30ButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauz:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castMuteToggleButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauA:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castClosedCaptionsButtonDrawable:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauB:I

    sget v3, Lcom/google/android/gms/R$styleable;->CastExpandedController_castControlButtons:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauH:[I

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauH:[I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_2
    new-array v3, v6, [I

    sget v4, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    aput v4, v3, v1

    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    aput v1, v3, v0

    const/4 v0, 0x2

    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    aput v1, v3, v0

    const/4 v0, 0x3

    sget v1, Lcom/google/android/gms/R$id;->cast_button_type_empty:I

    aput v1, v3, v0

    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauH:[I

    goto :goto_2
.end method

.method private zzue()V
    .locals 5

    const v4, 0x102000d

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaur:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaur:I

    sget v3, Lcom/google/android/gms/R$drawable;->cast_expanded_controller_seekbar_track:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzuf()Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/b/a/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    const/high16 v3, 0x1020000

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$color;->cast_expanded_controller_seek_bar_progress_background_tint_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzaus:I

    sget v3, Lcom/google/android/gms/R$drawable;->cast_expanded_controller_seekbar_thumb:I

    if-ne v2, v3, :cond_3

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzuf()Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_2
    invoke-static {v1}, Landroid/support/v4/b/a/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_3
    move-object v0, v1

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method private zzuf()Landroid/content/res/ColorStateList;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$dimen;->cast_expanded_controller_seekbar_disabled_alpha:I

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-array v2, v7, [I

    aput v0, v2, v6

    aput v1, v2, v5

    new-array v0, v7, [[I

    new-array v1, v5, [I

    const v3, 0x101009e

    aput v3, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [I

    const v3, -0x101009e

    aput v3, v1, v6

    aput-object v1, v0, v5

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private zzug()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    :cond_0
    return-void
.end method

.method private zzuh()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzze()Z

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzg()Z

    xor-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzi()Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzl()Z

    move-result v1

    if-eqz v1, :cond_1

    xor-int/lit16 v0, v0, 0x1000

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzk()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->setImmersive(Z)V

    :cond_2
    return-void
.end method

.method private zzui()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private zzuj()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzapY:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getCastDevice()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$string;->cast_casting_to_device:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauD:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private zzuk()V
    .locals 8

    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v5, v1

    :goto_0
    if-nez v4, :cond_5

    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauF:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v6, 0x40f00000    # 7.5f

    invoke-static {p0, v0, v2, v6}, Lcom/google/android/gms/cast/framework/media/widget/zza;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauF:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauF:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauL:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauN:Lcom/google/android/gms/internal/zzxf;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzxf;->zzo(Landroid/net/Uri;)Z

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauM:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->cast_ad_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauJ:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_5
    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauG:Lcom/google/android/gms/internal/zzxk;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzxk;->zzcf(I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauG:Lcom/google/android/gms/internal/zzxk;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreaks()Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzxk;->zzb(Ljava/util/List;I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_1

    :cond_6
    move v0, v3

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauK:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauJ:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzj()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauF:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauF:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final getButtonImageViewAt(I)Landroid/widget/ImageView;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauI:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getButtonSlotCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final getButtonTypeAt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauH:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatM:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauD:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUIMediaController()Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/cast/framework/CastContext;->registerLifecycleCallbacksBeforeIceCreamSandwich(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzapY:Lcom/google/android/gms/cast/framework/SessionManager;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzapY:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->finish()V

    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzatv:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->setPostRemoteMediaClientListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    sget v0, Lcom/google/android/gms/R$layout;->cast_expanded_controller_activity:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzuc()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzud()V

    sget v0, Lcom/google/android/gms/R$id;->expanded_controller_layout:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    sget v0, Lcom/google/android/gms/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Landroid/support/v7/widget/Toolbar;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzuj()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzui()V

    new-instance v0, Lcom/google/android/gms/internal/zzxf;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauK:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauK:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzxf;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauN:Lcom/google/android/gms/internal/zzxf;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauN:Lcom/google/android/gms/internal/zzxf;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity$1;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzxf;->zza(Lcom/google/android/gms/internal/zzxf$zza;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauN:Lcom/google/android/gms/internal/zzxf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxf;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->setPostRemoteMediaClientListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauO:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->dispose()V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauo:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->removeSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzauo:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->finish()V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzuj()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzuk()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzuh()V

    :cond_0
    return-void
.end method
