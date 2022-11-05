.class public Lcom/google/android/gms/internal/zzlb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlc;


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
.method public zzt(Landroid/content/Context;)Lcom/google/android/gms/internal/zzqm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/zzqm",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqk;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
