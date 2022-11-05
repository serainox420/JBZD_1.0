.class public final Lcom/google/android/gms/internal/zzqd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field private zzYJ:Landroid/app/Activity;

.field private zzYK:Z

.field private zzYL:Z

.field private zzYM:Z

.field private zzYN:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzYO:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqd;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqd;->zzYN:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqd;->zzYO:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private zzlg()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYK:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYN:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->zzYN:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdk()Lcom/google/android/gms/internal/zzqr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->zzYN:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYO:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->zzYO:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpo;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdk()Lcom/google/android/gms/internal/zzqr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->zzYO:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzqr;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYK:Z

    :cond_4
    return-void
.end method

.method private zzlh()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYN:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->zzYN:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpp;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYO:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqd;->zzYO:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpo;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYK:Z

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYL:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYM:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->zzlg()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYL:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->zzlh()V

    return-void
.end method

.method public zzl(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd;->zzYJ:Landroid/app/Activity;

    return-void
.end method

.method public zzle()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYM:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYL:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->zzlg()V

    :cond_0
    return-void
.end method

.method public zzlf()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqd;->zzYM:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqd;->zzlh()V

    return-void
.end method
