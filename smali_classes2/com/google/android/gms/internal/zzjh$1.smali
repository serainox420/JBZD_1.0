.class Lcom/google/android/gms/internal/zzjh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjh;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJE:Ljava/lang/String;

.field final synthetic zzJF:Lorg/json/JSONObject;

.field final synthetic zzJG:Lcom/google/android/gms/internal/zzjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjh;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjh$1;->zzJG:Lcom/google/android/gms/internal/zzjh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjh$1;->zzJE:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjh$1;->zzJF:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjh$1;->zzJG:Lcom/google/android/gms/internal/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjh;->zza(Lcom/google/android/gms/internal/zzjh;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjh$1;->zzJE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjh$1;->zzJF:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzqw;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
