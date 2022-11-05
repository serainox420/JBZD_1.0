.class public Lcom/mopub/network/CustomSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "CustomSSLSocketFactory.java"


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    return-void
.end method

.method static a(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 166
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 170
    invoke-virtual {p0, p1, p2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v1, "setHostname"

    invoke-direct {v0, p1, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v0, "Unable to call setHostname() on the socket"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 198
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 199
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 200
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method private a(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 152
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 153
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    invoke-static {v0, p1, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->a(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 155
    invoke-static {p1, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 157
    :cond_1
    return-void
.end method

.method static a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 191
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Server Name Identification failed."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    return-void
.end method

.method public static getDefault(I)Lcom/mopub/network/CustomSSLSocketFactory;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/mopub/network/CustomSSLSocketFactory;

    invoke-direct {v0}, Lcom/mopub/network/CustomSSLSocketFactory;-><init>()V

    .line 37
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 39
    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->a(Ljava/net/Socket;)V

    .line 52
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->a(Ljava/net/Socket;)V

    .line 62
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->a(Ljava/net/Socket;)V

    .line 72
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->a(Ljava/net/Socket;)V

    .line 82
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->a(Ljava/net/Socket;)V

    .line 92
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p2}, Lcom/mopub/network/InetAddressUtils;->getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->a(Ljava/net/Socket;)V

    .line 128
    invoke-direct {p0, v0, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 129
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
