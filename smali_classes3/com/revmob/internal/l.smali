.class public final Lcom/revmob/internal/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/revmob/internal/l;->a:Ljava/lang/Boolean;

    const-string v0, "1"

    sput-object v0, Lcom/revmob/internal/l;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, Lcom/revmob/internal/l;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/revmob/internal/l;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "f188c2f6176602368ab346d0b40f1098ed350c3c46595e9981a8db1db9d865b7"

    invoke-static {v1}, Lcom/revmob/internal/l;->c(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "3066546c3043314e614c4b764f433338"

    invoke-static {v2}, Lcom/revmob/internal/l;->c(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/revmob/internal/w;->b:Lcom/revmob/internal/w;

    const-string v3, "encrypt"

    invoke-static {v1, v0, v2, v0, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 7

    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/revmob/internal/l;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/revmob/internal/l;->c:I

    if-lt v1, v2, :cond_0

    const-string v1, "f188c2f6176602368ab346d0b40f1098ed350c3c46595e9981a8db1db9d865b7"

    invoke-static {v1}, Lcom/revmob/internal/l;->c(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "3066546c3043314e614c4b764f433338"

    invoke-static {v2}, Lcom/revmob/internal/l;->c(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    :cond_0
    return-object p1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/revmob/internal/w;->b:Lcom/revmob/internal/w;

    const-string v3, "decrypt"

    invoke-static {v1, v0, v2, v0, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
