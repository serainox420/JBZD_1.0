.class public Lcom/google/android/gms/ads/internal/overlay/zzp;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/overlay/zzp$zza;
    }
.end annotation


# instance fields
.field private final zzOi:Landroid/widget/ImageButton;

.field private final zzOj:Lcom/google/android/gms/ads/internal/overlay/zzv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzp$zza;Lcom/google/android/gms/ads/internal/overlay/zzv;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOj:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-virtual {p0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingLeft:I

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v3

    iget v4, p2, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingRight:I

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v4

    iget v5, p2, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingBottom:I

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    const-string v1, "Interstitial close button"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->size:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/content/Context;I)I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v2

    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->size:I

    iget v4, p2, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingLeft:I

    add-int/2addr v3, v4

    iget v4, p2, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingRight:I

    add-int/2addr v3, v4

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v3

    iget v4, p2, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->size:I

    add-int/lit8 v4, v4, 0x0

    iget v5, p2, Lcom/google/android/gms/ads/internal/overlay/zzp$zza;->paddingBottom:I

    add-int/2addr v4, v5

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOj:Lcom/google/android/gms/ads/internal/overlay/zzv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOj:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzhE()V

    :cond_0
    return-void
.end method

.method public zza(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzOi:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
