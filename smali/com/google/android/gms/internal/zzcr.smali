.class public final Lcom/google/android/gms/internal/zzcr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzwa:Ljava/lang/String;

.field private final zzwb:Lorg/json/JSONObject;

.field private final zzwc:Ljava/lang/String;

.field private final zzwd:Ljava/lang/String;

.field private final zzwe:Z

.field private final zzwf:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcr;->zzwd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcr;->zzwb:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcr;->zzwc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcr;->zzwa:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzcr;->zzwe:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcr;->zzwf:Z

    return-void
.end method


# virtual methods
.method public zzdA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcr;->zzwd:Ljava/lang/String;

    return-object v0
.end method

.method public zzdB()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcr;->zzwb:Lorg/json/JSONObject;

    return-object v0
.end method

.method public zzdC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcr;->zzwc:Ljava/lang/String;

    return-object v0
.end method

.method public zzdD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcr;->zzwe:Z

    return v0
.end method

.method public zzdE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcr;->zzwf:Z

    return v0
.end method

.method public zzdz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcr;->zzwa:Ljava/lang/String;

    return-object v0
.end method
