.class Lcom/google/android/gms/internal/zzxg$zzc;
.super Lcom/google/android/gms/internal/zzxi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzxg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzath:Lcom/google/android/gms/internal/zzxg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzxg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxg$zzc;->zzath:Lcom/google/android/gms/internal/zzxg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxi$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzxg;Lcom/google/android/gms/internal/zzxg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzxg$zzc;-><init>(Lcom/google/android/gms/internal/zzxg;)V

    return-void
.end method


# virtual methods
.method public zzb(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxg$zzc;->zzath:Lcom/google/android/gms/internal/zzxg;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzxg;->zza(Lcom/google/android/gms/internal/zzxg;[Ljava/lang/Object;)V

    return-void
.end method

.method public zzsB()I
    .locals 1

    const v0, 0x9d2360

    return v0
.end method
