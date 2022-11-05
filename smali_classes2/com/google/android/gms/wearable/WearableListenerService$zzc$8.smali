.class Lcom/google/android/gms/wearable/WearableListenerService$zzc$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zza(Lcom/google/android/gms/wearable/internal/zzh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbTo:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

.field final synthetic zzbTu:Lcom/google/android/gms/wearable/internal/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Lcom/google/android/gms/wearable/internal/zzh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$8;->zzbTo:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

    iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$8;->zzbTu:Lcom/google/android/gms/wearable/internal/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$8;->zzbTo:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$8;->zzbTu:Lcom/google/android/gms/wearable/internal/zzh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onEntityUpdate(Lcom/google/android/gms/wearable/zzb;)V

    return-void
.end method
