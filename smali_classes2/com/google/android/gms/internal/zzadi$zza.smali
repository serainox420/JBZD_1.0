.class public Lcom/google/android/gms/internal/zzadi$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzadi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzadi$zza$zza;
    }
.end annotation


# instance fields
.field private final zzaIC:J

.field private final zzaID:Ljava/util/Map;
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

.field private final zzaIE:I

.field private final zzaIF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzadk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaIG:I

.field private final zzaIH:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzadi$zza$zza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadi$zza$zza;->zza(Lcom/google/android/gms/internal/zzadi$zza$zza;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaIC:J

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzb(Lcom/google/android/gms/internal/zzadi$zza$zza;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaID:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzc(Lcom/google/android/gms/internal/zzadi$zza$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaIE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaIF:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadi$zza$zza;->zzd(Lcom/google/android/gms/internal/zzadi$zza$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaIG:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadi$zza$zza;->zze(Lcom/google/android/gms/internal/zzadi$zza$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaIH:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzadi$zza$zza;Lcom/google/android/gms/internal/zzadi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzadi$zza;-><init>(Lcom/google/android/gms/internal/zzadi$zza$zza;)V

    return-void
.end method


# virtual methods
.method public zzzA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaIE:I

    return v0
.end method

.method public zzzB()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaIH:I

    return v0
.end method

.method public zzzC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaIG:I

    return v0
.end method

.method public zzzy()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaIC:J

    return-wide v0
.end method

.method public zzzz()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaID:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadi$zza;->zzaID:Ljava/util/Map;

    goto :goto_0
.end method
