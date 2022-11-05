.class public Lcom/google/android/gms/internal/zzbio$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzavB:Ljava/lang/String;

.field private final zzbMu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbiq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbMv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbip;",
            ">;"
        }
    .end annotation
.end field

.field private zzbMw:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzbMu:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzbMv:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzavB:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzbMw:I

    return-void
.end method


# virtual methods
.method public zzSV()Lcom/google/android/gms/internal/zzbio;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzbio;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzbMu:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzbMv:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzavB:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbio;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbiq;)Lcom/google/android/gms/internal/zzbio$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzbMu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbip;)Lcom/google/android/gms/internal/zzbio$zza;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbip;->zzSW()Ljava/util/Map;

    move-result-object v0

    const-string v1, "instance_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbis;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzbMv:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public zzia(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbio$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbio$zza;->zzavB:Ljava/lang/String;

    return-object p0
.end method
