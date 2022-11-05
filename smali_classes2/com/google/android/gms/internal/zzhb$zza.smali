.class Lcom/google/android/gms/internal/zzhb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzGU:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzqw;",
            ">;"
        }
    .end annotation
.end field

.field private zzGV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhb$zza;->zzGU:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhb$zza;->zzf(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhb$zza;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhb$zza;->zzGV:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhb$zza;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhb$zza;->zzGU:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhb$zza;->zzg(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzhb$zza;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhb$zza;->zzGV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhb$zza;->zzh(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhb$zza;->zzi(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    return-object v0
.end method

.method private zzf(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzhb$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzhb$zza$1;-><init>(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)V

    return-object v0
.end method

.method private zzg(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzhb$zza$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzhb$zza$2;-><init>(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)V

    return-object v0
.end method

.method private zzh(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzhb$zza$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzhb$zza$3;-><init>(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)V

    return-object v0
.end method

.method private zzi(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzid;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzhb$zza$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzhb$zza$4;-><init>(Lcom/google/android/gms/internal/zzhb$zza;Lcom/google/android/gms/internal/zzjj;)V

    return-object v0
.end method


# virtual methods
.method public zzgh()Lcom/google/android/gms/internal/zzlw$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzhb$zza$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhb$zza$5;-><init>(Lcom/google/android/gms/internal/zzhb$zza;)V

    return-object v0
.end method
