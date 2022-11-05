.class Lcom/google/android/gms/internal/zzboq$zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzboq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zzccw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzccy:Ljava/lang/String;

.field private final zzccz:Lcom/google/android/gms/internal/zzbos;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzbos;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq$zzd;->zzccy:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzboq$zzd;->zzccw:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzboq$zzd;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboq$zzd;->zzccz:Lcom/google/android/gms/internal/zzbos;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;Lcom/google/android/gms/internal/zzboq$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzboq$zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzboq$zzd;)Lcom/google/android/gms/internal/zzbos;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zzd;->zzccz:Lcom/google/android/gms/internal/zzbos;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zzd;->zzccy:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zzd;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public zzXO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zzd;->zzccw:Ljava/util/List;

    return-object v0
.end method

.method public zzXP()Lcom/google/android/gms/internal/zzbos;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zzd;->zzccz:Lcom/google/android/gms/internal/zzbos;

    return-object v0
.end method
