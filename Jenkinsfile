pipeline {
  agent {
    node {
      label 'master'
      customWorkspace "/temp/.jenkins_${env.BRANCH_NAME}_site"
    }
  }
  parameters {
    string(name: 'GLUON_VERSION', defaultValue: 'v2020.1.2', description: 'Gluon version')
    string(name: 'BUILD_TYPE', defaultValue: 'experimental', description: 'experimental, beta, stable')
    string(name: 'VERSION', defaultValue: '1.4.10', description: 'Firmware version')
  }
  stages {
    stage('prepare build') {
      steps {
        rocketSend channel: 'firmware_builds', message: 'Build started'
        echo "Running ${env.BUILD_ID} on on ${env.JENKINS_URL}"
        checkout scm
        sh "sh -x build-jenkins.sh ${env.BRANCH_NAME} ${params.GLUON_VERSION} ${params.BUILD_TYPE} ${params.VERSION}"
      }
    }
    stage('build ar71xx-generic') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=ar71xx-generic GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage("build ar71xx-nand") {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=ar71xx-nand GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build ar71xx-tiny') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=ar71xx-tiny GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage("build brcm2708-bcm2708") {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=brcm2708-bcm2708 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage("build brcm2708-bcm2709") {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=brcm2708-bcm2709 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage("build brcm2708-bcm2710") {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=brcm2708-bcm2710 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build ipq40xx-generic') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=ipq40xx-generic GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build ipq806x-generic') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=ipq806x-generic GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build lantiq-xrx200') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=lantiq-xrx200 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build lantiq-xway') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=lantiq-xway GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build mpc85xx-generic') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=mpc85xx-generic GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build mpc85xx-p1020') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=mpc85xx-p1020 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build ramips-mt7620') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=ramips-mt7620 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build ramips-mt7621') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=ramips-mt7621 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build ramips-mt76x8') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=ramips-mt76x8 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build ramips-rt305x') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=ramips-rt305x GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build sunxi-cortexa7') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=sunxi-cortexa7 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build x86-64') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=x86-64 GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build x86-generic') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=x86-generic GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('build x86-geode') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make -j11 V=s Broken=1 GLUON_TARGET=x86-geode GLUON_BRANCH=${params.BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('create manifest') {
      steps {
        dir("/temp/${env.BRANCH_NAME}") {
          sh "make manifest GLUON_BRANCH=${BUILD_TYPE} GLUON_RELEASE=${VERSION}${BUILD_TYPE}_`date '+%Y%m%d'`"
        }
      }
    }
    stage('move images') {
      steps {
        sh "mkdir -p /mnt/images/${env.BRANCH_NAME}"
        sh "yes | cp -rf /temp/${env.BRANCH_NAME}/output/images/ /mnt/images/${env.BRANCH_NAME}/"
        rocketSend channel: 'firmware_builds', message: 'Build finished'
      }
    }
    stage('clean directory') {
      steps {
        sh "rm -r /temp/${env.BRANCH_NAME}"
      }
    }
  }
  post {
    failure {
      rocketSend channel: 'firmware_builds', message: 'Build error'
    }
  }
}
