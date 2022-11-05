.class final Lcom/google/android/gms/internal/zzawc$7;
.super Lcom/google/android/gms/nearby/connection/Connections$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzawc;->zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/nearby/connection/Connections$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbyK:Lcom/google/android/gms/nearby/connection/Connections$MessageListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawc$7;->zzbyK:Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    invoke-direct {p0}, Lcom/google/android/gms/nearby/connection/Connections$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawc$7;->zzbyK:Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/zzg;Z)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/nearby/connection/zzg;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawc$7;->zzbyK:Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    invoke-virtual {p2}, Lcom/google/android/gms/nearby/connection/zzg;->zzNV()[B

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onMessageReceived(Ljava/lang/String;[BZ)V

    goto :goto_0
.end method
