.class public Lcom/google/android/gms/internal/zzzm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zzaxI:Lcom/google/android/gms/internal/zzzu;

.field public zzaxJ:[B

.field public zzaxK:[I

.field public zzaxL:[Ljava/lang/String;

.field public zzaxM:[I

.field public zzaxN:[[B

.field public zzaxO:Z

.field public final zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

.field public final zzaxQ:Lcom/google/android/gms/internal/zzzk$zzc;

.field public final zzaxR:Lcom/google/android/gms/internal/zzzk$zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzzn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzzm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzzu;Lcom/google/android/gms/internal/zzbxy$zzd;Lcom/google/android/gms/internal/zzzk$zzc;Lcom/google/android/gms/internal/zzzk$zzc;[I[Ljava/lang/String;[I[[BZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxI:Lcom/google/android/gms/internal/zzzu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzm;->zzaxQ:Lcom/google/android/gms/internal/zzzk$zzc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzm;->zzaxR:Lcom/google/android/gms/internal/zzzk$zzc;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzzm;->zzaxK:[I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzzm;->zzaxL:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzzm;->zzaxM:[I

    iput-object p8, p0, Lcom/google/android/gms/internal/zzzm;->zzaxN:[[B

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzzm;->zzaxO:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzzu;[B[I[Ljava/lang/String;[I[[BZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxI:Lcom/google/android/gms/internal/zzzu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxJ:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzm;->zzaxK:[I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzm;->zzaxL:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxQ:Lcom/google/android/gms/internal/zzzk$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxR:Lcom/google/android/gms/internal/zzzk$zzc;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzzm;->zzaxM:[I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzzm;->zzaxN:[[B

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzzm;->zzaxO:Z

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzzm;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzzm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxI:Lcom/google/android/gms/internal/zzzu;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxI:Lcom/google/android/gms/internal/zzzu;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxJ:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxJ:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxK:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxK:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxL:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxL:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxQ:Lcom/google/android/gms/internal/zzzk$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxQ:Lcom/google/android/gms/internal/zzzk$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxR:Lcom/google/android/gms/internal/zzzk$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxR:Lcom/google/android/gms/internal/zzzk$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxM:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxM:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxN:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxN:[[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxO:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzzm;->zzaxO:Z

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxI:Lcom/google/android/gms/internal/zzzu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxJ:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxK:[I

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxL:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxQ:Lcom/google/android/gms/internal/zzzk$zzc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxR:Lcom/google/android/gms/internal/zzzk$zzc;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxM:[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxN:[[B

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxO:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxI:Lcom/google/android/gms/internal/zzzu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzm;->zzaxJ:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxK:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxL:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxP:Lcom/google/android/gms/internal/zzbxy$zzd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxQ:Lcom/google/android/gms/internal/zzzk$zzc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxR:Lcom/google/android/gms/internal/zzzk$zzc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxM:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxN:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzzm;->zzaxO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzm;->zzaxJ:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzzn;->zza(Lcom/google/android/gms/internal/zzzm;Landroid/os/Parcel;I)V

    return-void
.end method
