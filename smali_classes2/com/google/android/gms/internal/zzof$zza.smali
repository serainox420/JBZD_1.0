.class public final Lcom/google/android/gms/internal/zzof$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzKW:Ljava/lang/String;

.field private zzPY:I

.field private zzVC:Ljava/lang/String;

.field private zzVD:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzof$zza;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzof$zza;->zzKW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzof$zza;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzof$zza;->zzVC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzof$zza;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzof$zza;->zzPY:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzof$zza;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzof$zza;->zzVD:J

    return-wide v0
.end method


# virtual methods
.method public zzaP(Ljava/lang/String;)Lcom/google/android/gms/internal/zzof$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzof$zza;->zzKW:Ljava/lang/String;

    return-object p0
.end method

.method public zzaQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzof$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzof$zza;->zzVC:Ljava/lang/String;

    return-object p0
.end method

.method public zzae(I)Lcom/google/android/gms/internal/zzof$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzof$zza;->zzPY:I

    return-object p0
.end method

.method public zzjK()Lcom/google/android/gms/internal/zzof;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzof;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzof;-><init>(Lcom/google/android/gms/internal/zzof$zza;Lcom/google/android/gms/internal/zzof$1;)V

    return-object v0
.end method

.method public zzl(J)Lcom/google/android/gms/internal/zzof$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzof$zza;->zzVD:J

    return-object p0
.end method
