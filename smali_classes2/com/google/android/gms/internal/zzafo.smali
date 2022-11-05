.class public Lcom/google/android/gms/internal/zzafo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzafo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final moduleId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final pid:I

.field public final uid:I

.field public final zzaJT:Ljava/lang/String;

.field public final zzaJU:I

.field public final zzaJV:I

.field public final zzaJW:Ljava/lang/String;

.field public final zzaJX:Ljava/lang/String;

.field public final zzaJY:I

.field private zzaJZ:Lcom/google/android/gms/internal/zzcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzafp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzafp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzafo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafo;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzafo;->uid:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzafo;->moduleId:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzafo;->zzaJU:I

    iput p6, p0, Lcom/google/android/gms/internal/zzafo;->zzaJV:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzafo;->zzaJW:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzafo;->zzaJX:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/gms/internal/zzafo;->zzaJY:I

    iput p10, p0, Lcom/google/android/gms/internal/zzafo;->pid:I

    return-void
.end method

.method public static zzG(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zzafo;
    .locals 11

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/zzd;->zzC(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    const/4 v9, -0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    move-object v1, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzafo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/awareness/AwarenessOptions;)Lcom/google/android/gms/internal/zzafo;
    .locals 11

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzrE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/android/gms/common/util/zzd;->zzC(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzrF()I

    move-result v6

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzrG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzrH()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzrI()I

    move-result v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzafo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_0
    move-object v1, p1

    goto :goto_0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzafo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzafo;

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->uid:I

    iget v3, p1, Lcom/google/android/gms/internal/zzafo;->uid:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJU:I

    iget v3, p1, Lcom/google/android/gms/internal/zzafo;->zzaJU:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJV:I

    iget v3, p1, Lcom/google/android/gms/internal/zzafo;->zzaJV:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJY:I

    iget v3, p1, Lcom/google/android/gms/internal/zzafo;->zzaJY:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->moduleId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafo;->moduleId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJW:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafo;->zzaJW:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJX:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafo;->zzaJX:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->moduleId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJW:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJX:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->zzaJY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafo;->zzAj()Lcom/google/android/gms/internal/zzcc;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzafo;->uid:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzafo;->moduleId:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzafo;->zzaJU:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafo;->zzAk()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzafo;->zzaJW:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzafo;->zzaJX:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x44

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "(accnt="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vrsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 3pPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,  3pMdlId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzafp;->zza(Lcom/google/android/gms/internal/zzafo;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAj()Lcom/google/android/gms/internal/zzcc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzaJZ:Lcom/google/android/gms/internal/zzcc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafo;->zzaJT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzaJZ:Lcom/google/android/gms/internal/zzcc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafo;->zzaJZ:Lcom/google/android/gms/internal/zzcc;

    goto :goto_0
.end method

.method public zzAk()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzafo;->zzaJV:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
