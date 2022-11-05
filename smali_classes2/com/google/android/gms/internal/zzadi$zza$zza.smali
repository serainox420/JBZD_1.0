.class public Lcom/google/android/gms/internal/zzadi$zza$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzadi$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzaIC:J

.field private zzaID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaIE:I

.field private zzaIG:I

.field private zzaIH:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa8c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIC:J

    iput v2, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIG:I

    iput v2, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIH:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzadi$zza$zza;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIC:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzadi$zza$zza;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaID:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzadi$zza$zza;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIE:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzadi$zza$zza;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIG:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzadi$zza$zza;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIH:I

    return v0
.end method


# virtual methods
.method public zzH(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzadi$zza$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaID:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaID:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaID:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public zzK(J)Lcom/google/android/gms/internal/zzadi$zza$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIC:J

    return-object p0
.end method

.method public zzdr(I)Lcom/google/android/gms/internal/zzadi$zza$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIE:I

    return-object p0
.end method

.method public zzds(I)Lcom/google/android/gms/internal/zzadi$zza$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIG:I

    return-object p0
.end method

.method public zzdt(I)Lcom/google/android/gms/internal/zzadi$zza$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzaIH:I

    return-object p0
.end method

.method public zzzD()Lcom/google/android/gms/internal/zzadi$zza;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzadi$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzadi$zza;-><init>(Lcom/google/android/gms/internal/zzadi$zza$zza;Lcom/google/android/gms/internal/zzadi$1;)V

    return-object v0
.end method
