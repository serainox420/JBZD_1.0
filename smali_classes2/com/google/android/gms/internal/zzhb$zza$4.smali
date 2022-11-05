.class Lcom/google/android/gms/internal/zzhb$zza$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhb$zza;->zzi(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGW:Lcom/google/android/gms/internal/zzjj;

.field final synthetic zzGX:Lcom/google/android/gms/internal/zzhb$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhb$zza$4;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhb$zza$4;->zzGW:Lcom/google/android/gms/internal/zzjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v0, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhb$zza$4;->zzGX:Lcom/google/android/gms/internal/zzhb$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhb$zza;->zzb(Lcom/google/android/gms/internal/zzhb$zza;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhb$zza$4;->zzGW:Lcom/google/android/gms/internal/zzjj;

    const-string v2, "sendMessageToNativeJs"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzjj;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
