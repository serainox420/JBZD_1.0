.class Lcom/google/android/gms/internal/zzbtt$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final zzcoA:Ljava/lang/Object;

.field private final zzw:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtt$zza;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzw:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzbtt$zza;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbtt$zza;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbtt$zza;->zzw:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzw:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbtt$zza;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtt$zza;->mActivity:Landroid/app/Activity;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zza;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public zzUL()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzw:Ljava/lang/Runnable;

    return-object v0
.end method

.method public zzacU()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    return-object v0
.end method
