.class Lcom/google/android/gms/wearable/WearableListenerService$zzc$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/WearableListenerService$zzc;->onConnectedNodes(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbTo:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

.field final synthetic zzbTr:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$zzc;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$5;->zzbTo:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

    iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$5;->zzbTr:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$5;->zzbTo:Lcom/google/android/gms/wearable/WearableListenerService$zzc;

    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$zzc;->zzbTl:Lcom/google/android/gms/wearable/WearableListenerService;

    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zzc$5;->zzbTr:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/WearableListenerService;->onConnectedNodes(Ljava/util/List;)V

    return-void
.end method
