.class final Lcom/google/android/gms/internal/zznc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzTC:Lcom/google/android/gms/internal/zzne;

.field final synthetic zzTD:Lcom/google/android/gms/internal/zzgj;

.field final synthetic zzTE:Ljava/lang/String;

.field final synthetic zzsK:Lcom/google/android/gms/internal/zzgl;

.field final synthetic zzta:Lcom/google/android/gms/internal/zzji;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zzgj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc$2;->zzta:Lcom/google/android/gms/internal/zzji;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznc$2;->zzTC:Lcom/google/android/gms/internal/zzne;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznc$2;->zzsK:Lcom/google/android/gms/internal/zzgl;

    iput-object p4, p0, Lcom/google/android/gms/internal/zznc$2;->zzTD:Lcom/google/android/gms/internal/zzgj;

    iput-object p5, p0, Lcom/google/android/gms/internal/zznc$2;->zzTE:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc$2;->zzta:Lcom/google/android/gms/internal/zzji;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji;->zzgO()Lcom/google/android/gms/internal/zzji$zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$2;->zzTC:Lcom/google/android/gms/internal/zzne;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzne;->zzb(Lcom/google/android/gms/internal/zzji$zzc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$2;->zzsK:Lcom/google/android/gms/internal/zzgl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zznc$2;->zzTD:Lcom/google/android/gms/internal/zzgj;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzgl;->zza(Lcom/google/android/gms/internal/zzgj;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$2;->zzsK:Lcom/google/android/gms/internal/zzgl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgl;->zzfB()Lcom/google/android/gms/internal/zzgj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zznc$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zznc$2$1;-><init>(Lcom/google/android/gms/internal/zznc$2;Lcom/google/android/gms/internal/zzgj;)V

    new-instance v1, Lcom/google/android/gms/internal/zznc$2$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zznc$2$2;-><init>(Lcom/google/android/gms/internal/zznc$2;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    return-void
.end method
