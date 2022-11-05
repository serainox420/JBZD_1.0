.class public Lcom/google/firebase/appindexing/internal/zza$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/appindexing/internal/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/appindexing/internal/zza$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:[B

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/appindexing/internal/e;

    invoke-direct {v0}, Lcom/google/firebase/appindexing/internal/e;-><init>()V

    sput-object v0, Lcom/google/firebase/appindexing/internal/zza$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;Ljava/lang/String;[BZ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->a:I

    iput p1, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->a:I

    iput-boolean p2, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->b:Z

    iput-object p3, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->e:[B

    iput-boolean p6, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->f:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->e:[B

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MetadataImpl { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{ eventStatus: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' } "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{ uploadable: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' } "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "{ completionToken: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' } "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "{ accountName: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' } "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->e:[B

    if-eqz v0, :cond_3

    const-string v0, "{ ssbContext: [ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->e:[B

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-byte v4, v2, v0

    const-string v5, "0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "] } "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "{ contextOnly: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/firebase/appindexing/internal/zza$zza;->f:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' } "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/appindexing/internal/e;->a(Lcom/google/firebase/appindexing/internal/zza$zza;Landroid/os/Parcel;I)V

    return-void
.end method
