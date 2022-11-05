.class public final Lcom/google/android/gms/internal/zznp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zznm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzB(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zznm$zza;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
