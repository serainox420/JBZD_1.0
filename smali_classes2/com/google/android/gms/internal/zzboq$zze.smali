.class Lcom/google/android/gms/internal/zzboq$zze;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzboq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zze"
.end annotation


# instance fields
.field private final zzccA:Lcom/google/android/gms/internal/zzbos;

.field private final zzccB:Lcom/google/android/gms/internal/zzboq$zzc;

.field private final zzccC:Lcom/google/android/gms/internal/zzboo;

.field private final zzccD:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbos;Lcom/google/android/gms/internal/zzboq$zzc;Ljava/lang/Long;Lcom/google/android/gms/internal/zzboo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccA:Lcom/google/android/gms/internal/zzbos;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccB:Lcom/google/android/gms/internal/zzboq$zzc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccC:Lcom/google/android/gms/internal/zzboo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccD:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbos;Lcom/google/android/gms/internal/zzboq$zzc;Ljava/lang/Long;Lcom/google/android/gms/internal/zzboo;Lcom/google/android/gms/internal/zzboq$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzboq$zze;-><init>(Lcom/google/android/gms/internal/zzbos;Lcom/google/android/gms/internal/zzboq$zzc;Ljava/lang/Long;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzboq$zze;)Lcom/google/android/gms/internal/zzboq$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccB:Lcom/google/android/gms/internal/zzboq$zzc;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzboq$zze;)Lcom/google/android/gms/internal/zzbos;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccA:Lcom/google/android/gms/internal/zzbos;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccB:Lcom/google/android/gms/internal/zzboq$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzboq$zzc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccD:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (Tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzXQ()Lcom/google/android/gms/internal/zzboq$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccB:Lcom/google/android/gms/internal/zzboq$zzc;

    return-object v0
.end method

.method public zzXR()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccD:Ljava/lang/Long;

    return-object v0
.end method

.method public zzXS()Lcom/google/android/gms/internal/zzboo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$zze;->zzccC:Lcom/google/android/gms/internal/zzboo;

    return-object v0
.end method
