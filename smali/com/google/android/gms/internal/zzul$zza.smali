.class final Lcom/google/android/gms/internal/zzul$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appindexing/AppIndexApi$ActionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzahY:Lcom/google/android/gms/internal/zzul;

.field private zzahZ:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private zzaia:Lcom/google/android/gms/appindexing/Action;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzul;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/appindexing/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzul;",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/appindexing/Action;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzul$zza;->zzahY:Lcom/google/android/gms/internal/zzul;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzul$zza;->zzahZ:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzul$zza;->zzaia:Lcom/google/android/gms/appindexing/Action;

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzul$zza;->zzaia:Lcom/google/android/gms/appindexing/Action;

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzuk;->zza(Lcom/google/android/gms/appindexing/Action;JLjava/lang/String;I)Lcom/google/android/gms/internal/zzud;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzul$zza;->zzahY:Lcom/google/android/gms/internal/zzul;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzud;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzul;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/zzud;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public getPendingResult()Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzul$zza;->zzahZ:Lcom/google/android/gms/common/api/PendingResult;

    return-object v0
.end method
