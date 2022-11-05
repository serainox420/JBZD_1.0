.class public final Lcom/google/android/gms/internal/zzmi$zza;
.super Lcom/google/android/gms/internal/zzmi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqp",
            "<",
            "Lcom/google/android/gms/internal/zzmk;",
            ">;",
            "Lcom/google/android/gms/internal/zzmh$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzmi;-><init>(Lcom/google/android/gms/internal/zzqp;Lcom/google/android/gms/internal/zzmh$zza;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi$zza;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public zzjn()V
    .locals 0

    return-void
.end method

.method public zzjo()Lcom/google/android/gms/internal/zzmt;
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/zzfw;

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzBh:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzfw;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi$zza;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/zznb;->zzju()Lcom/google/android/gms/internal/zznb;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zznc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zznc;

    move-result-object v0

    return-object v0
.end method
