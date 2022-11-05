.class public Lcom/google/android/gms/internal/zzbfz;
.super Lcom/google/android/gms/internal/zzbcs;


# instance fields
.field private final zzakD:I

.field private final zzbKh:Lcom/google/android/gms/internal/zzbcd;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzbcd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcs;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbfz;->zzakD:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbfz;->zzbKh:Lcom/google/android/gms/internal/zzbcd;

    return-void
.end method


# virtual methods
.method public varargs zza(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbcd;",
            "[",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;)",
            "Lcom/google/android/gms/internal/zzbit",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    array-length v0, p2

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbjb;->zzTi()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbhz;->zzX(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbcp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbfz;->zzbKh:Lcom/google/android/gms/internal/zzbcd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbcp;->zza(Lcom/google/android/gms/internal/zzbcd;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbit;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbcp;->zzb(Lcom/google/android/gms/internal/zzbcd;[Lcom/google/android/gms/internal/zzbit;)Lcom/google/android/gms/internal/zzbit;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbfz;->zzakD:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to convert Custom Pixie to instruction"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbbu;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/zzbix;->zzbMS:Lcom/google/android/gms/internal/zzbix;

    goto :goto_2
.end method
