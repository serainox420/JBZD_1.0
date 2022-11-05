.class public interface abstract Lcom/google/android/gms/nearby/connection/Connections;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/connection/Connections$zza;,
        Lcom/google/android/gms/nearby/connection/Connections$MessageListener;,
        Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;,
        Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;,
        Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;,
        Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;
    }
.end annotation


# static fields
.field public static final DURATION_INDEFINITE:J = 0x0L

.field public static final MAX_RELIABLE_MESSAGE_LEN:I = 0x1000

.field public static final MAX_UNRELIABLE_MESSAGE_LEN:I = 0x490


# virtual methods
.method public abstract acceptConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disconnectFromEndpoint(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.end method

.method public abstract getLocalDeviceId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLocalEndpointId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract rejectConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B)V
.end method

.method public abstract sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation
.end method

.method public abstract sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B)V
.end method

.method public abstract sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation
.end method

.method public abstract startAdvertising(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/AppMetadata;",
            "J",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startDiscovery(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stopAdvertising(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method

.method public abstract stopAllEndpoints(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method

.method public abstract stopDiscovery(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.end method
