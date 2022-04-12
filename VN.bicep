@description('The resource name.Valid characters:Alphanumerics, underscores, periods, and hyphens.Start with alphanumeric. End alphanumeric or underscore.')
@minLength(2)
@maxLength(64)
@description ('Provide a for parameter')
param name string
param location string
param tags object
param tags_ExtendedLocation object
param addressSpace_AddressPrefixes array
param bgpCommunities_VirtualNetworkCommunity string
param dhcpOptions_dnsServers array
param enableDdosProtection bool
param enableVmProtection bool
param encryption object
param flowTimeoutInMinutes_ipAllocations array
param subnets array
param virtualNetworkPeerings array


resource virtualNetworks 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: name // parameterize
  location: location  // parameterize
  tags:tags
  extendedLocation:tags_ExtendedLocation
  properties: {
    addressSpace: {
      addressPrefixes:addressSpace_AddressPrefixes
    }
    bgpCommunities: {
      virtualNetworkCommunity:bgpCommunities_VirtualNetworkCommunity  // parameterize
    }
    ddosProtectionPlan: {
      id: 'string'
    }
    dhcpOptions: {
      dnsServers:dhcpOptions_dnsServers
    }
    enableDdosProtection: enableDdosProtection  // parameterize
    enableVmProtection: enableVmProtection  // parameterize
    encryption:encryption
    flowTimeoutInMinutes: int  // parameterize
    ipAllocations: flowTimeoutInMinutes_ipAllocations
    subnets: subnets
    applicationGatewayIpConfigurations: [
      {
        id: 'string'
        name: 'string'
        properties: {
          subnet: {
            id: 'string'
          }
        }
      }
    ]
    delegations: [
      {
        id: 'string'
        name: 'string'
        properties: {
          serviceName: 'string'
        }
        type: 'string'
      }
    ]
    ipAllocations: [
      {
        id: 'string'
      }
    ]
    natGateway: {
      id: 'string'
    }
    networkSecurityGroup: {
      id: 'string'
      location: 'string'
      properties: {
        securityRules: [
          {
            id: 'string'
            name: 'string'
            properties: {
              access: 'string'
              description: 'string'
              destinationAddressPrefix: 'string'
              destinationAddressPrefixes: [
                'string'
              ]
              destinationApplicationSecurityGroups: [
                {
                  id: 'string'
                  location: 'string'
                  properties: {}
                  tags: {}
                }
              ]
              destinationPortRange: 'string'
              destinationPortRanges: [
                'string'
              ]
              direction: 'string'
              priority: int
              protocol: 'string'
              sourceAddressPrefix: 'string'
              sourceAddressPrefixes: [
                'string'
              ]
              sourceApplicationSecurityGroups: [
                {
                  id: 'string'
                  location: 'string'
                  properties: {}
                  tags: {}
                }
              ]
              sourcePortRange: 'string'
              sourcePortRanges: [
                'string'
              ]
            }
            type: 'string'
          }
        ]
      }
      tags: {}
    }
    privateEndpointNetworkPolicies: 'string'
    privateLinkServiceNetworkPolicies: 'string'
    routeTable: {
      id: 'string'
      location: 'string'
      properties: {
        disableBgpRoutePropagation: bool
        routes: [
          {
            id: 'string'
            name: 'string'
            properties: {
              addressPrefix: 'string'
              hasBgpOverride: bool
              nextHopIpAddress: 'string'
              nextHopType: 'string'
            }
            type: 'string'
          }
        ]
      }
      tags: {}
    }
    serviceEndpointPolicies: [
      {
        id: 'string'
        location: 'string'
        properties: {
          contextualServiceEndpointPolicies: [
            'string'
          ]
          serviceAlias: 'string'
          serviceEndpointPolicyDefinitions: [
            {
              id: 'string'
              name: 'string'
              properties: {
                description: 'string'
                service: 'string'
                serviceResources: [
                  'string'
                ]
              }
              type: 'string'
            }
          ]
        }
        tags: {}
      }
    ]
    serviceEndpoints: [
      {
        locations: [
          'string'
        ]
        service: 'string'
      }
    ]
  }
  type: 'string'
}
]
    virtualNetworkPeerings: virtualNetworkPeerings
    remoteBgpCommunities: {
      virtualNetworkCommunity: 'string'
    }
    remoteVirtualNetwork: {
      id: 'string'
    }
    remoteVirtualNetworkAddressSpace: {
      addressPrefixes: [
        'string'
      ]
    }
    useRemoteGateways: bool
  }
  type: 'string'
}
]
}
}
