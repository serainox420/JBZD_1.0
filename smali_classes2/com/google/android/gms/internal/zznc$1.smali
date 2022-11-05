.class final Lcom/google/android/gms/internal/zznc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzji;Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmn;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzTA:Lcom/google/android/gms/internal/zzmk;

.field final synthetic zzTB:Landroid/os/Bundle;

.field final synthetic zzTz:Lcom/google/android/gms/internal/zznb;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznb;Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc$1;->zzTz:Lcom/google/android/gms/internal/zznb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznc$1;->zztf:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznc$1;->zzTA:Lcom/google/android/gms/internal/zzmk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zznc$1;->zzTB:Landroid/os/Bundle;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznc$1;->zzbk()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzbk()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc$1;->zzTA:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRz:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method
