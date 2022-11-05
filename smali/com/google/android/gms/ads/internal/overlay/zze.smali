.class public Lcom/google/android/gms/ads/internal/overlay/zze;
.super Lcom/google/android/gms/internal/zzkz$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/overlay/zze$zzd;,
        Lcom/google/android/gms/ads/internal/overlay/zze$zzb;,
        Lcom/google/android/gms/ads/internal/overlay/zze$zzc;,
        Lcom/google/android/gms/ads/internal/overlay/zze$zza;
    }
.end annotation


# static fields
.field static final zzNf:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field zzIs:Lcom/google/android/gms/internal/zzqw;

.field zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

.field zzNi:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field zzNj:Z

.field zzNk:Landroid/widget/FrameLayout;

.field zzNl:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field zzNm:Z

.field zzNn:Z

.field zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

.field zzNp:Z

.field zzNq:I

.field zzNr:Lcom/google/android/gms/ads/internal/overlay/zzm;

.field private final zzNs:Ljava/lang/Object;

.field private zzNt:Ljava/lang/Runnable;

.field private zzNu:Z

.field private zzNv:Z

.field private zzNw:Z

.field private zzNx:Z

.field private zzNy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNf:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkz$zza;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNj:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNm:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNn:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNp:Z

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNs:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNw:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNx:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNy:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNr:Lcom/google/android/gms/ads/internal/overlay/zzm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zze;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNm:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zze$zza;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze$zza;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zze$zza; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    iput v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget v0, v0, Lcom/google/android/gms/internal/zzqh;->zzYX:I

    const v1, 0x7270e0

    if-le v0, v1, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shouldCallOnOverlayOpened"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNy:Z

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzn;->zztK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNn:Z

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEa:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    iget v0, v0, Lcom/google/android/gms/ads/internal/zzn;->zztP:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zze$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze$zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/overlay/zze$1;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpj;->zziP()Ljava/lang/Object;

    :cond_5
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNy:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzbO()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNN:I

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNF:Lcom/google/android/gms/internal/zzdx;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNF:Lcom/google/android/gms/internal/zzdx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdx;->onAdClicked()V

    :cond_7
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNP:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->setId(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNN:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zze$zza;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNn:Z

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzA(Z)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze$zzc;-><init>(Lcom/google/android/gms/internal/zzqw;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzA(Z)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzA(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNm:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcJ()Lcom/google/android/gms/ads/internal/overlay/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzq;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/ads/internal/overlay/zze$zza; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhH()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhD()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->onPause()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFu:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpp;->zzl(Lcom/google/android/gms/internal/zzqw;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhH()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNN:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNm:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->onResume()V

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFu:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpp;->zzm(Lcom/google/android/gms/internal/zzqw;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNm:Z

    goto :goto_0

    :cond_4
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFu:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpp;->zzm(Lcom/google/android/gms/internal/zzqw;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFu:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpp;->zzl(Lcom/google/android/gms/internal/zzqw;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhH()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected zzA(Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zze$zza;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNv:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zze$zza;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zze$zza;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/google/android/gms/internal/zzgd;->zzFt:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/zzn;->zztL:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNn:Z

    if-eqz v4, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqx;->zzdD()Z

    move-result v5

    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNp:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpp;->zzkQ()I

    move-result v2

    if-ne v1, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNp:Z

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNp:Z

    const/16 v2, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Delay onShow to next orientation change: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzpp;->zza(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNn:Z

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->setBackgroundColor(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbo()V

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcN()Lcom/google/android/gms/internal/zzqy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzqw;->zzbC()Lcom/google/android/gms/internal/zzeg;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvn:Lcom/google/android/gms/internal/zzqh;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v10}, Lcom/google/android/gms/internal/zzqw;->zzby()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/zzqy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzu;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNI:Lcom/google/android/gms/internal/zzhz;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNO:Lcom/google/android/gms/internal/zzif;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqx;->zzlN()Lcom/google/android/gms/ads/internal/zzf;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v6 .. v16}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzkx;Lcom/google/android/gms/internal/zzot;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zze$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/overlay/zze$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzqx$zza;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzqw;->loadUrl(Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzqw;->zzc(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzqw;->zzb(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNn:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlM()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNp:Z

    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhK()V

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzz(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzlw()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->zzby()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zze;->zzsO:Lcom/google/android/gms/ads/internal/overlay/zzn;

    :goto_8
    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzqw;Landroid/widget/RelativeLayout;)Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNr:Lcom/google/android/gms/ads/internal/overlay/zzm;

    :goto_9
    return-void

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpp;->zzkR()I

    move-result v2

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNp:Z

    goto/16 :goto_4

    :cond_f
    const/4 v1, 0x0

    goto :goto_a

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    sget v2, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNf:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->setBackgroundColor(I)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNL:Ljava/lang/String;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNJ:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNL:Ljava/lang/String;

    const-string v9, "text/html"

    const-string v10, "UTF-8"

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/zzqw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_12
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zze$zza;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zze$zza;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzqw;->setContext(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_15
    const-string v1, "Appstreaming controller is null."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_16
    move v1, v2

    goto/16 :goto_0
.end method

.method protected zzM(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqw;->zzM(I)V

    return-void
.end method

.method public zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNk:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNk:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNk:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNk:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbo()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNl:Landroid/webkit/WebChromeClient$CustomViewCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNj:Z

    return-void
.end method

.method public zza(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNi:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNi:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zza(ZZ)V

    :cond_0
    return-void
.end method

.method public zzbo()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNv:Z

    return-void
.end method

.method public zzg(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public zzhD()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNk:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbo()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNk:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNk:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNl:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNl:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNl:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNj:Z

    return-void
.end method

.method public zzhE()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public zzhF()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzqw;->zzlB()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    const-string v2, "onbackblocked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzqw;->zza(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public zzhG()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNi:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzz(Z)V

    return-void
.end method

.method protected zzhH()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNw:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNq:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzM(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNs:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNu:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzlH()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zze$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zze$2;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNt:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNt:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCY:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhI()V

    goto :goto_0
.end method

.method zzhI()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNx:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNx:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zze$zzc;->zzqn:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqw;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqw;->zzK(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zze$zzc;->parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/zze$zzc;->index:I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zze$zzc;->zzNB:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNh:Lcom/google/android/gms/ads/internal/overlay/zze$zzc;

    :cond_2
    :goto_1
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzbN()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqw;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public zzhJ()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNp:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzhK()V

    :cond_0
    return-void
.end method

.method protected zzhK()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzIs:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzhK()V

    return-void
.end method

.method public zzhL()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->disable()V

    return-void
.end method

.method public zzhM()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNs:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNu:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNt:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNt:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNt:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 5

    const/16 v4, 0x800

    const/16 v3, 0x400

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFt:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public zzz(Z)V
    .locals 5

    const/4 v4, -0x2

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFv:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;-><init>()V

    const/16 v0, 0x32

    iput v0, v3, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->size:I

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, v3, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingLeft:I

    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    iput v0, v3, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingRight:I

    iput v2, v3, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingTop:I

    iput v1, v3, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingBottom:I

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzp$zza;Lcom/google/android/gms/ads/internal/overlay/zzv;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNi:Lcom/google/android/gms/ads/internal/overlay/zzp;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_2

    const/16 v0, 0xb

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNi:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNg:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNK:Z

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zza(ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNo:Lcom/google/android/gms/ads/internal/overlay/zze$zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzNi:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zze$zzb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x9

    goto :goto_2
.end method
