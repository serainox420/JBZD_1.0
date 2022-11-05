.class public Lcom/google/android/gms/internal/zzbsq;
.super Ljava/lang/Object;


# instance fields
.field private zzckm:[B

.field private zzckn:Ljava/lang/String;

.field private zzcko:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsq;->zzckn:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/google/android/gms/internal/zzbsq;->zzcko:B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbsq;->zzckm:[B

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/zzbsq;->zzcko:B

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbsq;->zzckn:Ljava/lang/String;

    return-object v0
.end method
