.class final Lcom/google/android/gms/internal/zznc$3;
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
.field final synthetic zzTA:Lcom/google/android/gms/internal/zzmk;

.field final synthetic zzTC:Lcom/google/android/gms/internal/zzne;

.field final synthetic zzTz:Lcom/google/android/gms/internal/zznb;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznb;Landroid/content/Context;Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/internal/zzmk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc$3;->zzTz:Lcom/google/android/gms/internal/zznb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznc$3;->zztf:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznc$3;->zzTC:Lcom/google/android/gms/internal/zzne;

    iput-object p4, p0, Lcom/google/android/gms/internal/zznc$3;->zzTA:Lcom/google/android/gms/internal/zzmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc$3;->zzTz:Lcom/google/android/gms/internal/zznb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zznb;->zzTp:Lcom/google/android/gms/internal/zznk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zznc$3;->zztf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zznc$3;->zzTC:Lcom/google/android/gms/internal/zzne;

    iget-object v3, p0, Lcom/google/android/gms/internal/zznc$3;->zzTA:Lcom/google/android/gms/internal/zzmk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zznk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzne;Lcom/google/android/gms/internal/zzqh;)V

    return-void
.end method
