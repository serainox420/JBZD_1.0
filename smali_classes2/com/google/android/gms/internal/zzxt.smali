.class public Lcom/google/android/gms/internal/zzxt;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# static fields
.field private static final zzapV:Lcom/google/android/gms/internal/zzyz;


# instance fields
.field private final zzPB:Landroid/content/Context;

.field private final zzanj:Lcom/google/android/gms/cast/Cast$Listener;

.field private final zzatA:Landroid/view/View$OnClickListener;

.field private final zzatC:Landroid/widget/ImageView;

.field private final zzatO:Ljava/lang/String;

.field private final zzatP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzyz;

    const-string v1, "MuteToggleUIController"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzyz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzxt;->zzapV:Lcom/google/android/gms/internal/zzyz;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxt;->zzatC:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzPB:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzPB:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/R$string;->cast_mute:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatO:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzPB:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/R$string;->cast_unmute:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatP:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzxt$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzxt$1;-><init>(Lcom/google/android/gms/internal/zzxt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    new-instance v0, Lcom/google/android/gms/internal/zzxt$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzxt$2;-><init>(Lcom/google/android/gms/internal/zzxt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatA:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzxt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxt;->zztW()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzxt;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzxt;->zzan(Z)V

    return-void
.end method

.method private zzan(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatC:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxt;->zzatC:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatO:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatP:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzxt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzPB:Landroid/content/Context;

    return-object v0
.end method

.method private zztW()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzPB:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxt;->zzatC:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isMute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzxt;->zzan(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzxt;->zzan(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatC:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic zztZ()Lcom/google/android/gms/internal/zzyz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzxt;->zzapV:Lcom/google/android/gms/internal/zzyz;

    return-object v0
.end method


# virtual methods
.method public onMediaStatusUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatC:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onSendingRemoteMediaRequest()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatC:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxt;->zzatA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzanj:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/CastSession;->addCastListener(Lcom/google/android/gms/cast/Cast$Listener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxt;->zztW()V

    return-void
.end method

.method public onSessionEnded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzatC:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
