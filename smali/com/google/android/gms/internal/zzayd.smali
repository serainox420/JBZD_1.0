.class public Lcom/google/android/gms/internal/zzayd;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzayd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbAo:[Lcom/google/android/gms/internal/zzayh;

.field private static final zzbAp:[Ljava/lang/String;

.field private static final zzbAq:Ljava/lang/String;

.field public static final zzbAr:Lcom/google/android/gms/internal/zzayd;


# instance fields
.field final zzE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final zzaiI:I

.field final zzbAs:Lcom/google/android/gms/internal/zzayh;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzbAt:Ljava/lang/String;

.field final zzbAu:[Lcom/google/android/gms/internal/zzayh;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final zzbAv:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzbAw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzaye;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaye;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzayd;->CREATOR:Landroid/os/Parcelable$Creator;

    new-array v0, v1, [Lcom/google/android/gms/internal/zzayh;

    sput-object v0, Lcom/google/android/gms/internal/zzayd;->zzbAo:[Lcom/google/android/gms/internal/zzayh;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzayd;->zzbAp:[Ljava/lang/String;

    sput-object v4, Lcom/google/android/gms/internal/zzayd;->zzbAq:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzayd;

    const-string v1, ""

    sget-object v2, Lcom/google/android/gms/internal/zzayd;->zzbAo:[Lcom/google/android/gms/internal/zzayh;

    sget-object v3, Lcom/google/android/gms/internal/zzayd;->zzbAp:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzayd;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/zzayh;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzayd;->zzbAr:Lcom/google/android/gms/internal/zzayd;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzayh;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzayh;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzayd;->zzaiI:I

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzayd;->zzbAt:Ljava/lang/String;

    if-nez p5, :cond_1

    sget-object p5, Lcom/google/android/gms/internal/zzayd;->zzbAo:[Lcom/google/android/gms/internal/zzayh;

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/internal/zzayd;->zzbAu:[Lcom/google/android/gms/internal/zzayh;

    if-nez p6, :cond_2

    sget-object p6, Lcom/google/android/gms/internal/zzayd;->zzbAp:[Ljava/lang/String;

    :cond_2
    iput-object p6, p0, Lcom/google/android/gms/internal/zzayd;->zzbAv:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayd;->zzbAu:[Lcom/google/android/gms/internal/zzayh;

    array-length v0, v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzayh;->zzbAA:Lcom/google/android/gms/internal/zzayh;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzayd;->zzbAs:Lcom/google/android/gms/internal/zzayh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayd;->zzbAv:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzayd;->zzE:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzayd;->zzbAw:Ljava/lang/String;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayd;->zzbAu:[Lcom/google/android/gms/internal/zzayh;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayd;->zzbAv:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/google/android/gms/internal/zzayh;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzayd;-><init>(ILcom/google/android/gms/internal/zzayh;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzayh;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzayd;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzayd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayd;->zzbAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzayd;->zzbAt:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayd;->zzbAw:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzayd;->zzbAw:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayd;->zzbAt:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayd;->zzbAw:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayd;->zzbAt:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayd;->zzbAw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "NearbyDevice{handle="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", bluetoothAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaye;->zza(Lcom/google/android/gms/internal/zzayd;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayd;->zzbAt:Ljava/lang/String;

    return-object v0
.end method

.method public zzOM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayd;->zzbAw:Ljava/lang/String;

    return-object v0
.end method
