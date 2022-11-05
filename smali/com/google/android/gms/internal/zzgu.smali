.class public Lcom/google/android/gms/internal/zzgu;
.super Lcom/google/android/gms/internal/zzhf$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field private final zzGn:Landroid/graphics/drawable/Drawable;

.field private final zzGo:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhf$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgu;->zzGn:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgu;->mUri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzgu;->zzGo:D

    return-void
.end method


# virtual methods
.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGo:D

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public zzfP()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgu;->zzGn:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
