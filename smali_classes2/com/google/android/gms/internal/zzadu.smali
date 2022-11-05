.class public Lcom/google/android/gms/internal/zzadu;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzadu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzRg:Ljava/lang/String;

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

.field private final zzaIR:J

.field private final zzaIS:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzaIT:Ljava/lang/String;

.field private final zzaIU:Ljava/lang/String;

.field private final zzaIV:Ljava/lang/String;

.field private final zzaIW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzadv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzadv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzadu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzadk;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadu;->zzRg:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzadu;->zzaIR:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzadu;->zzaIS:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzadu;->zzaIT:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzadu;->zzaIU:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzadu;->zzaIV:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzadu;->zzaIW:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/internal/zzadu;->zzaIE:I

    iput-object p10, p0, Lcom/google/android/gms/internal/zzadu;->zzaIF:Ljava/util/List;

    iput p11, p0, Lcom/google/android/gms/internal/zzadu;->zzaIH:I

    iput p12, p0, Lcom/google/android/gms/internal/zzadu;->zzaIG:I

    return-void
.end method


# virtual methods
.method public getAppInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIU:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu;->zzRg:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzadv;->zza(Lcom/google/android/gms/internal/zzadu;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzzA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIE:I

    return v0
.end method

.method public zzzB()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIH:I

    return v0
.end method

.method public zzzC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIG:I

    return v0
.end method

.method public zzzG()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIR:J

    return-wide v0
.end method

.method public zzzH()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIS:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzzI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIT:Ljava/lang/String;

    return-object v0
.end method

.method public zzzJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIV:Ljava/lang/String;

    return-object v0
.end method

.method public zzzK()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIW:Ljava/util/List;

    return-object v0
.end method

.method public zzzL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzadk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadu;->zzaIF:Ljava/util/List;

    return-object v0
.end method
