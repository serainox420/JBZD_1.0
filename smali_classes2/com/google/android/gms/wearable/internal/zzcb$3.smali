.class final Lcom/google/android/gms/wearable/internal/zzcb$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/zzb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/zzcb;->zza([Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzb$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/wearable/internal/zzb$zza",
        "<",
        "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbTK:[Landroid/content/IntentFilter;


# direct methods
.method constructor <init>([Landroid/content/IntentFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzcb$3;->zzbTK:[Landroid/content/IntentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/NodeApi$NodeListener;Lcom/google/android/gms/internal/zzabh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/internal/zzcx;",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcb$3;->zzbTK:[Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/google/android/gms/wearable/internal/zzcx;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/NodeApi$NodeListener;Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)V

    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Ljava/lang/Object;Lcom/google/android/gms/internal/zzabh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p3, Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/zzcb$3;->zza(Lcom/google/android/gms/wearable/internal/zzcx;Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/NodeApi$NodeListener;Lcom/google/android/gms/internal/zzabh;)V

    return-void
.end method
