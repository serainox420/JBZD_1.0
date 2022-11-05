.class Lcom/google/android/gms/internal/zzqy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;)Lcom/google/android/gms/internal/zzqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzJP:Lcom/google/android/gms/internal/zzaw;

.field final synthetic zzJx:Lcom/google/android/gms/internal/zzqh;

.field final synthetic zzZR:Lcom/google/android/gms/internal/zzeg;

.field final synthetic zzZS:Z

.field final synthetic zzZT:Z

.field final synthetic zzZU:Lcom/google/android/gms/internal/zzqy;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqy;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqy$1;->zzZU:Lcom/google/android/gms/internal/zzqy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqy$1;->zztf:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqy$1;->zzZR:Lcom/google/android/gms/internal/zzeg;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzqy$1;->zzZS:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzqy$1;->zzZT:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqy$1;->zzJP:Lcom/google/android/gms/internal/zzaw;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzqy$1;->zzJx:Lcom/google/android/gms/internal/zzqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqy$1;->zzma()Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    return-object v0
.end method

.method public zzma()Lcom/google/android/gms/internal/zzqw;
    .locals 10

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqy$1;->zzZU:Lcom/google/android/gms/internal/zzqy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqy$1;->zztf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqy$1;->zzZR:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzqy$1;->zzZS:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzqy$1;->zzZT:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqy$1;->zzJP:Lcom/google/android/gms/internal/zzaw;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzqy$1;->zzJx:Lcom/google/android/gms/internal/zzqh;

    move-object v8, v7

    move-object v9, v7

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzqy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzu;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    return-object v0
.end method
