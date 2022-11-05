.class final Lcom/google/android/gms/wearable/internal/zzcy$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzabh$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzcy;->zzb(Lcom/google/android/gms/wearable/internal/zzbz;)Lcom/google/android/gms/internal/zzabh$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzabh$zzc",
        "<",
        "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbTp:Lcom/google/android/gms/wearable/internal/zzbz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzbz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzcy$2;->zzbTp:Lcom/google/android/gms/wearable/internal/zzbz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy$2;->zzbTp:Lcom/google/android/gms/wearable/internal/zzbz;

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/MessageApi$MessageListener;->onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzcy$2;->zza(Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V

    return-void
.end method

.method public zzwc()V
    .locals 0

    return-void
.end method
